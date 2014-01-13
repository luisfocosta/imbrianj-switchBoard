      <div id="{{DEVICE_ID}}" class="device">
        <div class="control-block">
          <div class="volume">
            <a href="/?device={{DEVICE_ID}}&command=VOLUP" class="fa fa-volume-up"><span>VolUp</span></a>
            <a href="/?device={{DEVICE_ID}}&command=VOLDOWN" class="fa fa-volume-down"><span>VolDown</span></a>
            <a href="/?device={{DEVICE_ID}}&command=MUTE" class="fa fa-volume-off"><span>Mute</span></a>
          </div>
          <div class="navigation">
            <a href="/?device={{DEVICE_ID}}&command=UP" class="fa fa-arrow-up"><span>Up</span></a>
            <a href="/?device={{DEVICE_ID}}&command=LEFT" class="fa fa-arrow-left"><span>Left</span></a>
            <a href="/?device={{DEVICE_ID}}&command=ENTER" class="fa-stack">
              <i class="fa fa-square-o fa-stack-2x"></i>
              <i class="fa fa-level-up fa-rotate-90"></i>
              <span>Enter</span>
            </a>
            <a href="/?device={{DEVICE_ID}}&command=RIGHT" class="fa fa-arrow-right"><span>Right</span></a>
            <a href="/?device={{DEVICE_ID}}&command=DOWN" class="fa fa-arrow-down"><span>Down</span></a>
          </div>
          <div class="channel">
            <a href="/?device={{DEVICE_ID}}&command=CH_UP" class="fa fa-chevron-up"><span>Ch_Up</span></a>
            <a href="/?device={{DEVICE_ID}}&command=CH_DOWN" class="fa fa-chevron-down"><span>Ch_Down</span></a>
          </div>
        </div>
        <div class="shortcuts">
          <ul>
            <li><a href="/?device={{DEVICE_ID}}&command=POWER" class="fa fa-power-off"><span>Power</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=VIERA_LINK" class="fa fa-th"><span>Viera_Link</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=CHG_INPUT" class="fa fa-desktop"><span>CHG_INPUT</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=INTERNET" class="fa fa-globe"><span>Internet</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=HDMI4" class="fa fa-sitemap"><span>HDMI4</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=SUBMENU" class="fa fa-cog"><span>SUBMENU</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=MENU" class="fa fa-list-ul"><span>Menu</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=CANCEL" class="fa fa-sign-out"><span>Cancel</span></a></li>
          </ul>
        </div>
        <div class="text">
          <form class="text-form" id="tv-search-form" action="/" method="get">
            <fieldset>
              <legend>Text Input</legend>
              <label for="panasonic-text-input">Text Input:</label>
              <input id="panasonic-text-input" class="text-input" type="text" name="text" placeholder="Text Input" required>
              <input class="device-input" type="hidden" name="device" value="panasonic">
              <button type="submit" class="button">Submit</button>
            </fieldset>
          </form>
        </div>
        <div class="tv-controls">
          <ol>
            <li><a href="/?device={{DEVICE_ID}}&command=D1"><span>1</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D2"><span>2</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D3"><span>3</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D4"><span>4</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D5"><span>5</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D6"><span>6</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D7"><span>7</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D8"><span>8</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D9"><span>9</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=D0"><span>0</span></a></li>
          </ol>
          <ul>
            <li><a href="/?device={{DEVICE_ID}}&command=RETURN" class="fa fa-reply"><span>Return</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=INFO" class="fa fa-list"><span>Info</span></a></li>
          </ul>
        </div>
        <div class="media">
          <ul>
            <li><a href="/?device={{DEVICE_ID}}&command=REW" class="fa fa-backward"><span>Rew</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=STOP" class="fa fa-stop"><span>Stop</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=PAUSE" class="fa fa-pause"><span>Pause</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=PLAY" class="fa fa-play"><span>Play</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=FF" class="fa fa-forward"><span>FF</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=REC" class="fa fa-circle"><span>Rec</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=RED" class="fa fa-stop red"><span>Red</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=GREEN" class="fa fa-stop green"><span>Green</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=YELLOW" class="fa fa-stop yellow"><span>Yellow</span></a></li>
            <li><a href="/?device={{DEVICE_ID}}&command=BLUE" class="fa fa-stop blue"><span>Blue</span></a></li>
          </ul>
        </div>
      </div>