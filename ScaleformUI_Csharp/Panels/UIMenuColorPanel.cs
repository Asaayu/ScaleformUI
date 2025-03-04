﻿using CitizenFX.Core;
using CitizenFX.Core.Native;

namespace ScaleformUI
{
    public enum ColorPanelType { Hair, Makeup }
    public class UIMenuColorPanel : UIMenuPanel
    {
        public string Title { get; set; }
        public ColorPanelType ColorPanelColorType { get; set; }
        public List<HudColor> CustomColors { get; private set; }
        internal int _value { get; set; }
        public event ColorPanelChangedEvent OnColorPanelChange;
        public int CurrentSelection
        {
            get
            {
                //_getValue();
                return _value;
            }
            set
            {
                _value = value;
                if (CustomColors is null)
                {
                    if (value > 63)
                        _value -= 63;
                    if (value < 0)
                        _value += 63;
                }
                else
                {
                    if (value > CustomColors.Count - 1)
                        _value -= CustomColors.Count - 1;
                    if (value < 0)
                        _value += CustomColors.Count - 1;
                }
                _setValue(_value);
            }
        }
        public UIMenuColorPanel(string title, ColorPanelType ColorType, int startIndex = 0)
        {
            Title = title ?? "Color Panel";
            ColorPanelColorType = ColorType;
            _value = startIndex;
        }

        public UIMenuColorPanel(string title, List<HudColor> colors, int startIndex = 0)
        {
            Title = title ?? "Color Panel";
            ColorPanelColorType = (ColorPanelType)2;
            _value = startIndex;
            CustomColors = colors;
        }

        internal void PanelChanged()
        {
            OnColorPanelChange?.Invoke(ParentItem, this, CurrentSelection);
        }

        /*
        private void //UpdateSelection(bool update)
        {
            if (update)
            {
                ParentItem.Parent.ListChange(ParentItem, ParentItem.Index);
                ParentItem.ListChangedTrigger(ParentItem.Index);
            }
        }*/

        public async void _getValue()
        {
            int it = this.ParentItem.Parent.Pagination.GetScaleformIndex(this.ParentItem.Parent.MenuItems.IndexOf(this.ParentItem));
            int van = this.ParentItem.Panels.IndexOf(this);
            API.BeginScaleformMovieMethod(ScaleformUI._ui.Handle, "GET_VALUE_FROM_PANEL");
            API.ScaleformMovieMethodAddParamInt(it);
            API.ScaleformMovieMethodAddParamInt(van);
            int ret = API.EndScaleformMovieMethodReturnValue();
            while (!API.IsScaleformMovieMethodReturnValueReady(ret)) await BaseScript.Delay(0);
            _value = API.GetScaleformMovieMethodReturnValueInt(ret);
        }

        public void _setValue(int val)
        {

            int it = ParentItem.Parent.Pagination.GetScaleformIndex(ParentItem.Parent.MenuItems.IndexOf(this.ParentItem));
            int van = ParentItem.Panels.IndexOf(this);
            ScaleformUI._ui.CallFunction("SET_COLOR_PANEL_VALUE", it, van, val);
        }
    }
}
