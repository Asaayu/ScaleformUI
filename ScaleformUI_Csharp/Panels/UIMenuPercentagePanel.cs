﻿using CitizenFX.Core;
using CitizenFX.Core.Native;
using System.Drawing;

namespace ScaleformUI
{
    public class UIMenuPercentagePanel : UIMenuPanel
    {

        public string Min { get; set; }
        public string Max { get; set; }
        public string Title { get; set; }

        public event PercentagePanelChangedEvent OnPercentagePanelChange;

        internal float _value;

        public float Percentage
        {
            get
            {
                return _value;
            }
            set
            {
                _value = value;
                _setValue(value);
            }
        }


        public UIMenuPercentagePanel(string title, string MinText = "0%", string MaxText = "100%", float initialValue = 0)
        {
            Min = MinText;
            Max = MaxText;
            Title = !string.IsNullOrWhiteSpace(title) ? title : "Opacity";
            _value = initialValue;
        }

        /*
        public void UpdateParent(float Percentage)
        {
            ParentItem.Parent.ListChange(ParentItem, ParentItem.Index);
            ParentItem.ListChangedTrigger(ParentItem.Index);
        }
        */

        private void _setValue(float val)
        {
            int it = ParentItem.Parent.Pagination.GetScaleformIndex(ParentItem.Parent.MenuItems.IndexOf(ParentItem));
            int van = ParentItem.Panels.IndexOf(this);
            ScaleformUI._ui.CallFunction("SET_PERCENT_PANEL_RETURN_VALUE", it, van, val);
        }

        public async void SetMousePercentage(PointF mouse)
        {
            int it = ParentItem.Parent.Pagination.GetScaleformIndex(ParentItem.Parent.MenuItems.IndexOf(ParentItem));
            int van = ParentItem.Panels.IndexOf(this);
            API.BeginScaleformMovieMethod(ScaleformUI._ui.Handle, "SET_PERCENT_PANEL_POSITION_RETURN_VALUE");
            API.ScaleformMovieMethodAddParamInt(it);
            API.ScaleformMovieMethodAddParamInt(van);
            API.ScaleformMovieMethodAddParamFloat(mouse.X);
            int ret = API.EndScaleformMovieMethodReturnValue();
            while (!API.IsScaleformMovieMethodReturnValueReady(ret)) await BaseScript.Delay(0);
            _value = Convert.ToSingle(API.GetScaleformMovieMethodReturnValueString(ret));
        }

        internal void PercentagePanelChange()
        {
            OnPercentagePanelChange?.Invoke(ParentItem, this, Percentage);
        }
    }
}
