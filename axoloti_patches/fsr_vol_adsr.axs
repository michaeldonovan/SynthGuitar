<patch-1.0 appVersion="1.0.12">
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="686" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="from_osc" x="42" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="fsr" x="42" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="gate" x="42" y="140">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="364" y="154" text="vol adsr"/>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="364" y="168">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="-64.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="924" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="vol_a" x="42" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="vol_d" x="42" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="vol_s" x="42" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="vol_r" x="42" y="308">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="gate" outlet="inlet"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="vol_a" outlet="inlet"/>
         <dest obj="adsr_1" inlet="a"/>
      </net>
      <net>
         <source obj="vol_d" outlet="inlet"/>
         <dest obj="adsr_1" inlet="d"/>
      </net>
      <net>
         <source obj="vol_s" outlet="inlet"/>
         <dest obj="adsr_1" inlet="s"/>
      </net>
      <net>
         <source obj="vol_r" outlet="inlet"/>
         <dest obj="adsr_1" inlet="r"/>
      </net>
      <net>
         <source obj="from_osc" outlet="inlet"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
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
      <width>936</width>
      <height>562</height>
   </windowPos>
</patch-1.0>