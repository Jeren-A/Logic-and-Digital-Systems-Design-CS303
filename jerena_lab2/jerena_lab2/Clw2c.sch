<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="C0" />
        <signal name="XLXN_3" />
        <signal name="B0" />
        <signal name="A0" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="S0" />
        <signal name="B1" />
        <signal name="A1" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="S1" />
        <signal name="B2" />
        <signal name="A2" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_18" />
        <signal name="S2" />
        <signal name="C2" />
        <signal name="XLXN_21" />
        <signal name="C3" />
        <port polarity="Input" name="C0" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="A0" />
        <port polarity="Output" name="S0" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A1" />
        <port polarity="Output" name="S1" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A2" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="C2" />
        <port polarity="Output" name="C3" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="CLA">
            <timestamp>2020-12-1T23:8:46</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="C0" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="S0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="A0" name="I0" />
            <blockpin signalname="B0" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_4">
            <blockpin signalname="A0" name="I0" />
            <blockpin signalname="B0" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="B1" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="B1" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_7">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_9">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="S1" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_11">
            <blockpin signalname="C2" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="S2" name="O" />
        </block>
        <block symbolname="CLA" name="XLXI_13">
            <blockpin signalname="C0" name="C0" />
            <blockpin signalname="XLXN_18" name="C1" />
            <blockpin signalname="C2" name="C2" />
            <blockpin signalname="C3" name="C3" />
            <blockpin signalname="XLXN_3" name="G0" />
            <blockpin signalname="XLXN_11" name="G1" />
            <blockpin signalname="XLXN_24" name="G2" />
            <blockpin signalname="XLXN_7" name="P0" />
            <blockpin signalname="XLXN_12" name="P1" />
            <blockpin signalname="XLXN_25" name="P2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="C0">
            <wire x2="1328" y1="1536" y2="1536" x1="704" />
            <wire x2="2096" y1="1536" y2="1536" x1="1328" />
            <wire x2="1536" y1="1328" y2="1328" x1="1328" />
            <wire x2="1328" y1="1328" y2="1536" x1="1328" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1184" y1="1264" y2="1376" x1="1184" />
            <wire x2="1536" y1="1264" y2="1264" x1="1184" />
        </branch>
        <instance x="2096" y="1600" name="XLXI_2" orien="R0" />
        <instance x="928" y="1472" name="XLXI_3" orien="R0" />
        <instance x="928" y="1328" name="XLXI_4" orien="R0" />
        <branch name="B0">
            <wire x2="848" y1="1200" y2="1200" x1="704" />
            <wire x2="848" y1="1200" y2="1344" x1="848" />
            <wire x2="928" y1="1344" y2="1344" x1="848" />
            <wire x2="928" y1="1200" y2="1200" x1="848" />
        </branch>
        <branch name="A0">
            <wire x2="800" y1="1264" y2="1264" x1="704" />
            <wire x2="800" y1="1264" y2="1408" x1="800" />
            <wire x2="928" y1="1408" y2="1408" x1="800" />
            <wire x2="928" y1="1264" y2="1264" x1="800" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1504" y1="1232" y2="1232" x1="1184" />
            <wire x2="2096" y1="896" y2="896" x1="1504" />
            <wire x2="2096" y1="896" y2="1472" x1="2096" />
            <wire x2="1504" y1="896" y2="1200" x1="1504" />
            <wire x2="1536" y1="1200" y2="1200" x1="1504" />
            <wire x2="1504" y1="1200" y2="1232" x1="1504" />
        </branch>
        <branch name="S0">
            <wire x2="2384" y1="1504" y2="1504" x1="2352" />
        </branch>
        <instance x="960" y="1184" name="XLXI_5" orien="R0" />
        <instance x="960" y="1040" name="XLXI_6" orien="R0" />
        <branch name="B1">
            <wire x2="880" y1="912" y2="912" x1="704" />
            <wire x2="880" y1="912" y2="1056" x1="880" />
            <wire x2="960" y1="1056" y2="1056" x1="880" />
            <wire x2="960" y1="912" y2="912" x1="880" />
        </branch>
        <branch name="A1">
            <wire x2="832" y1="976" y2="976" x1="704" />
            <wire x2="832" y1="976" y2="1120" x1="832" />
            <wire x2="960" y1="1120" y2="1120" x1="832" />
            <wire x2="960" y1="976" y2="976" x1="832" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1264" y1="1088" y2="1088" x1="1216" />
            <wire x2="1264" y1="1088" y2="1136" x1="1264" />
            <wire x2="1536" y1="1136" y2="1136" x1="1264" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1296" y1="944" y2="944" x1="1216" />
            <wire x2="1296" y1="944" y2="1072" x1="1296" />
            <wire x2="1488" y1="1072" y2="1072" x1="1296" />
            <wire x2="1536" y1="1072" y2="1072" x1="1488" />
            <wire x2="1488" y1="832" y2="1072" x1="1488" />
            <wire x2="2000" y1="832" y2="832" x1="1488" />
            <wire x2="2000" y1="832" y2="1200" x1="2000" />
            <wire x2="2128" y1="1200" y2="1200" x1="2000" />
        </branch>
        <branch name="S1">
            <wire x2="2432" y1="1232" y2="1232" x1="2384" />
        </branch>
        <instance x="992" y="752" name="XLXI_7" orien="R0" />
        <branch name="B2">
            <wire x2="912" y1="624" y2="624" x1="736" />
            <wire x2="912" y1="624" y2="768" x1="912" />
            <wire x2="992" y1="768" y2="768" x1="912" />
            <wire x2="992" y1="624" y2="624" x1="912" />
        </branch>
        <branch name="A2">
            <wire x2="864" y1="688" y2="688" x1="736" />
            <wire x2="864" y1="688" y2="832" x1="864" />
            <wire x2="992" y1="832" y2="832" x1="864" />
            <wire x2="992" y1="688" y2="688" x1="864" />
        </branch>
        <instance x="992" y="896" name="XLXI_8" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="1392" y1="800" y2="800" x1="1248" />
            <wire x2="1392" y1="800" y2="1008" x1="1392" />
            <wire x2="1536" y1="1008" y2="1008" x1="1392" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1408" y1="656" y2="656" x1="1248" />
            <wire x2="1408" y1="656" y2="944" x1="1408" />
            <wire x2="1472" y1="944" y2="944" x1="1408" />
            <wire x2="1536" y1="944" y2="944" x1="1472" />
            <wire x2="1472" y1="768" y2="944" x1="1472" />
            <wire x2="2144" y1="768" y2="768" x1="1472" />
            <wire x2="2144" y1="768" y2="992" x1="2144" />
        </branch>
        <instance x="2128" y="1328" name="XLXI_9" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1936" y1="1072" y2="1072" x1="1920" />
            <wire x2="1936" y1="1072" y2="1264" x1="1936" />
            <wire x2="2128" y1="1264" y2="1264" x1="1936" />
        </branch>
        <branch name="S2">
            <wire x2="2448" y1="1024" y2="1024" x1="2400" />
        </branch>
        <branch name="C2">
            <wire x2="1936" y1="1008" y2="1008" x1="1920" />
            <wire x2="1936" y1="1008" y2="1056" x1="1936" />
            <wire x2="2144" y1="1056" y2="1056" x1="1936" />
            <wire x2="2016" y1="1008" y2="1008" x1="1936" />
            <wire x2="2016" y1="960" y2="1008" x1="2016" />
            <wire x2="2608" y1="960" y2="960" x1="2016" />
        </branch>
        <branch name="C3">
            <wire x2="1936" y1="944" y2="944" x1="1920" />
            <wire x2="2480" y1="928" y2="928" x1="1936" />
            <wire x2="1936" y1="928" y2="944" x1="1936" />
        </branch>
        <instance x="2144" y="1120" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="704" y="1536" name="C0" orien="R180" />
        <iomarker fontsize="28" x="704" y="1200" name="B0" orien="R180" />
        <iomarker fontsize="28" x="704" y="1264" name="A0" orien="R180" />
        <iomarker fontsize="28" x="2384" y="1504" name="S0" orien="R0" />
        <iomarker fontsize="28" x="704" y="976" name="A1" orien="R180" />
        <iomarker fontsize="28" x="704" y="912" name="B1" orien="R180" />
        <iomarker fontsize="28" x="736" y="688" name="A2" orien="R180" />
        <iomarker fontsize="28" x="736" y="624" name="B2" orien="R180" />
        <iomarker fontsize="28" x="2432" y="1232" name="S1" orien="R0" />
        <iomarker fontsize="28" x="2448" y="1024" name="S2" orien="R0" />
        <iomarker fontsize="28" x="2608" y="960" name="C2" orien="R0" />
        <iomarker fontsize="28" x="2480" y="928" name="C3" orien="R0" />
        <instance x="1536" y="1360" name="XLXI_13" orien="R0">
        </instance>
    </sheet>
</drawing>