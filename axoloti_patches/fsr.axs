<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="from_gpio" x="56" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/reciprocal" uuid="439f340c2da8a031b6d48ed82626b4fbaaa05774" name="reciprocal_1" x="196" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_2" x="322" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="cafcafb14553874dcff56b97ab767998e788ec01" name="soft_2" x="420" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth2" uuid="9ba3ddec912512e6b63211080e89cb25b6d84834" name="smooth2_2" x="504" y="56">
      <params>
         <frac32.u.map name="risetime" value="0.0"/>
         <frac32.u.map name="falltime" value="15.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="value" x="686" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;c" uuid="99f2934d97d62b715a829979ef6c8abef35dcdb2" name="&gt;c_1" x="238" y="182">
      <params>
         <frac32.u.map name="c" value="1.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gate" x="686" y="182">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="soft_2" inlet="in"/>
      </net>
      <net>
         <source obj="reciprocal_1" outlet="out"/>
         <dest obj="mux_2" inlet="i2"/>
         <dest obj="&gt;c_1" inlet="in"/>
      </net>
      <net>
         <source obj="&gt;c_1" outlet="out"/>
         <dest obj="mux_2" inlet="s"/>
         <dest obj="gate" inlet="outlet"/>
      </net>
      <net>
         <source obj="soft_2" outlet="out"/>
         <dest obj="smooth2_2" inlet="in"/>
      </net>
      <net>
         <source obj="from_gpio" outlet="inlet"/>
         <dest obj="reciprocal_1" inlet="in"/>
      </net>
      <net>
         <source obj="smooth2_2" outlet="out"/>
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