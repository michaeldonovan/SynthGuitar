<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="from_gpio" x="14" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="value" x="742" y="70">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="14" y="154" text="threshold for ribbons"/>
   <obj type="math/&gt;c" uuid="99f2934d97d62b715a829979ef6c8abef35dcdb2" name="&gt;c_1" x="14" y="168">
      <params>
         <frac32.u.map name="c" value="0.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_1" x="168" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_1" x="350" y="168">
      <params>
         <frac32.u.map name="time" value="5.5">
            <presets/>
         </frac32.u.map>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gate" x="686" y="252">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="&gt;c_1" outlet="out"/>
         <dest obj="mux_1" inlet="s"/>
         <dest obj="gate" inlet="outlet"/>
      </net>
      <net>
         <source obj="from_gpio" outlet="inlet"/>
         <dest obj="&gt;c_1" inlet="in"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="smooth_1" inlet="in"/>
      </net>
      <net>
         <source obj="smooth_1" outlet="out"/>
         <dest obj="value" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>16</x>
      <y>33</y>
      <width>1280</width>
      <height>562</height>
   </windowPos>
</patch-1.0>