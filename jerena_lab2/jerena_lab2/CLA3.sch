<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C0" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="B0" />
        <signal name="A0" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="S0" />
        <signal name="B1" />
        <signal name="A1" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="S1" />
        <signal name="XLXN_21" />
        <signal name="B2" />
        <signal name="A2" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="S2" />
        <signal name="C3" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
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
            <blockpin signalname="XLXN_13" name="I1" />
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
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="B1" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="B1" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_8">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="S1" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_9">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_11">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="S2" name="O" />
        </block>
        <block symbolname="CLA" name="XLXI_12">
            <blockpin signalname="C0" name="C0" />
            <blockpin signalname="XLXN_21" name="C1" />
            <blockpin signalname="XLXN_33" name="C2" />
            <blockpin signalname="C3" name="C3" />
            <blockpin signalname="XLXN_3" name="G0" />
            <blockpin signalname="XLXN_17" name="G1" />
            <blockpin signalname="XLXN_24" name="G2" />
            <blockpin signalname="XLXN_13" name="P0" />
            <blockpin signalname="XLXN_18" name="P1" />
            <blockpin signalname="XLXN_25" name="P2" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="C0">
            <wire x2="1312" y1="1616" y2="1616" x1="688" />
            <wire x2="2080" y1="1616" y2="1616" x1="1312" />
            <wire x2="1520" y1="1408" y2="1408" x1="1312" />
            <wire x2="1312" y1="1408" y2="1616" x1="1312" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1168" y1="1344" y2="1456" x1="1168" />
            <wire x2="1520" y1="1344" y2="1344" x1="1168" />
        </branch>
        <instance x="2080" y="1680" name="XLXI_2" orien="R0" />
        <instance x="912" y="1552" name="XLXI_3" orien="R0" />
        <instance x="912" y="1408" name="XLXI_4" orien="R0" />
        <branch name="B0">
            <wire x2="832" y1="1280" y2="1280" x1="688" />
            <wire x2="832" y1="1280" y2="1424" x1="832" />
            <wire x2="912" y1="1424" y2="1424" x1="832" />
            <wire x2="912" y1="1280" y2="1280" x1="832" />
        </branch>
        <branch name="A0">
            <wire x2="784" y1="1344" y2="1344" x1="688" />
            <wire x2="784" y1="1344" y2="1488" x1="784" />
            <wire x2="912" y1="1488" y2="1488" x1="784" />
            <wire x2="912" y1="1344" y2="1344" x1="784" />
        </branch>
        <iomarker fontsize="28" x="688" y="1616" name="C0" orien="R180" />
        <iomarker fontsize="28" x="688" y="1280" name="B0" orien="R180" />
        <iomarker fontsize="28" x="688" y="1344" name="A0" orien="R180" />
        <branch name="XLXN_13">
            <wire x2="1488" y1="1312" y2="1312" x1="1168" />
            <wire x2="2080" y1="976" y2="976" x1="1488" />
            <wire x2="2080" y1="976" y2="1552" x1="2080" />
            <wire x2="1488" y1="976" y2="1280" x1="1488" />
            <wire x2="1520" y1="1280" y2="1280" x1="1488" />
            <wire x2="1488" y1="1280" y2="1312" x1="1488" />
        </branch>
        <branch name="S0">
            <wire x2="2368" y1="1584" y2="1584" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1584" name="S0" orien="R0" />
        <instance x="944" y="1264" name="XLXI_5" orien="R0" />
        <instance x="944" y="1120" name="XLXI_6" orien="R0" />
        <branch name="B1">
            <wire x2="864" y1="992" y2="992" x1="688" />
            <wire x2="864" y1="992" y2="1136" x1="864" />
            <wire x2="944" y1="1136" y2="1136" x1="864" />
            <wire x2="944" y1="992" y2="992" x1="864" />
        </branch>
        <branch name="A1">
            <wire x2="816" y1="1056" y2="1056" x1="688" />
            <wire x2="816" y1="1056" y2="1200" x1="816" />
            <wire x2="944" y1="1200" y2="1200" x1="816" />
            <wire x2="944" y1="1056" y2="1056" x1="816" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1248" y1="1168" y2="1168" x1="1200" />
            <wire x2="1248" y1="1168" y2="1216" x1="1248" />
            <wire x2="1520" y1="1216" y2="1216" x1="1248" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1280" y1="1024" y2="1024" x1="1200" />
            <wire x2="1280" y1="1024" y2="1152" x1="1280" />
            <wire x2="1472" y1="1152" y2="1152" x1="1280" />
            <wire x2="1520" y1="1152" y2="1152" x1="1472" />
            <wire x2="1472" y1="912" y2="1152" x1="1472" />
            <wire x2="1984" y1="912" y2="912" x1="1472" />
            <wire x2="1984" y1="912" y2="1280" x1="1984" />
            <wire x2="2112" y1="1280" y2="1280" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="688" y="1056" name="A1" orien="R180" />
        <iomarker fontsize="28" x="688" y="992" name="B1" orien="R180" />
        <branch name="S1">
            <wire x2="2416" y1="1312" y2="1312" x1="2368" />
        </branch>
        <instance x="976" y="832" name="XLXI_9" orien="R0" />
        <branch name="B2">
            <wire x2="896" y1="704" y2="704" x1="720" />
            <wire x2="896" y1="704" y2="848" x1="896" />
            <wire x2="976" y1="848" y2="848" x1="896" />
            <wire x2="976" y1="704" y2="704" x1="896" />
        </branch>
        <branch name="A2">
            <wire x2="848" y1="768" y2="768" x1="720" />
            <wire x2="848" y1="768" y2="912" x1="848" />
            <wire x2="976" y1="912" y2="912" x1="848" />
            <wire x2="976" y1="768" y2="768" x1="848" />
        </branch>
        <instance x="976" y="976" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="720" y="768" name="A2" orien="R180" />
        <iomarker fontsize="28" x="720" y="704" name="B2" orien="R180" />
        <branch name="XLXN_24">
            <wire x2="1376" y1="880" y2="880" x1="1232" />
            <wire x2="1376" y1="880" y2="1088" x1="1376" />
            <wire x2="1520" y1="1088" y2="1088" x1="1376" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1392" y1="736" y2="736" x1="1232" />
            <wire x2="1392" y1="736" y2="1024" x1="1392" />
            <wire x2="1456" y1="1024" y2="1024" x1="1392" />
            <wire x2="1520" y1="1024" y2="1024" x1="1456" />
            <wire x2="1456" y1="848" y2="1024" x1="1456" />
            <wire x2="2128" y1="848" y2="848" x1="1456" />
            <wire x2="2128" y1="848" y2="1072" x1="2128" />
        </branch>
        <instance x="2112" y="1408" name="XLXI_8" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="1920" y1="1152" y2="1152" x1="1904" />
            <wire x2="1920" y1="1152" y2="1344" x1="1920" />
            <wire x2="2112" y1="1344" y2="1344" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1312" name="S1" orien="R0" />
        <branch name="S2">
            <wire x2="2432" y1="1104" y2="1104" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2432" y="1104" name="S2" orien="R0" />
        <branch name="C3">
            <wire x2="1920" y1="1024" y2="1024" x1="1904" />
            <wire x2="2464" y1="1008" y2="1008" x1="1920" />
            <wire x2="1920" y1="1008" y2="1024" x1="1920" />
        </branch>
        <instance x="2128" y="1200" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="2464" y="1008" name="C3" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="2016" y1="1088" y2="1088" x1="1904" />
            <wire x2="2016" y1="1088" y2="1136" x1="2016" />
            <wire x2="2128" y1="1136" y2="1136" x1="2016" />
        </branch>
        <instance x="1520" y="1440" name="XLXI_12" orien="R0">
        </instance>
    </sheet>
</drawing>