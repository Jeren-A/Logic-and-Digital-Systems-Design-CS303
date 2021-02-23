<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="G0" />
        <signal name="P0" />
        <signal name="C0" />
        <signal name="XLXN_8" />
        <signal name="C1" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="G1" />
        <signal name="P1" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="C2" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="G2" />
        <signal name="C3" />
        <signal name="P2" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <port polarity="Input" name="G0" />
        <port polarity="Input" name="P0" />
        <port polarity="Input" name="C0" />
        <port polarity="Output" name="C1" />
        <port polarity="Input" name="G1" />
        <port polarity="Input" name="P1" />
        <port polarity="Output" name="C2" />
        <port polarity="Input" name="G2" />
        <port polarity="Output" name="C3" />
        <port polarity="Input" name="P2" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="P0" name="I0" />
            <blockpin signalname="C0" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="G0" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="C1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="P1" name="I0" />
            <blockpin signalname="G0" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_6">
            <blockpin signalname="G1" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="C2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="P1" name="I0" />
            <blockpin signalname="P0" name="I1" />
            <blockpin signalname="C0" name="I2" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="P2" name="I0" />
            <blockpin signalname="G1" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_9">
            <blockpin signalname="P2" name="I0" />
            <blockpin signalname="P1" name="I1" />
            <blockpin signalname="G0" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_10">
            <blockpin signalname="P2" name="I0" />
            <blockpin signalname="P1" name="I1" />
            <blockpin signalname="P0" name="I2" />
            <blockpin signalname="C0" name="I3" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="G2" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_21" name="I3" />
            <blockpin signalname="C3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1904" y="1776" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1904" y1="1648" y2="1648" x1="1696" />
        </branch>
        <branch name="G0">
            <wire x2="1392" y1="1744" y2="1744" x1="1056" />
            <wire x2="1888" y1="1744" y2="1744" x1="1392" />
            <wire x2="1456" y1="832" y2="832" x1="1344" />
            <wire x2="1344" y1="832" y2="1440" x1="1344" />
            <wire x2="1344" y1="1440" y2="1728" x1="1344" />
            <wire x2="1392" y1="1728" y2="1728" x1="1344" />
            <wire x2="1392" y1="1728" y2="1744" x1="1392" />
            <wire x2="1424" y1="1440" y2="1440" x1="1344" />
            <wire x2="1904" y1="1712" y2="1712" x1="1888" />
            <wire x2="1888" y1="1712" y2="1744" x1="1888" />
        </branch>
        <instance x="1440" y="1744" name="XLXI_1" orien="R0" />
        <branch name="P0">
            <wire x2="1120" y1="1680" y2="1680" x1="1056" />
            <wire x2="1440" y1="1680" y2="1680" x1="1120" />
            <wire x2="1456" y1="640" y2="640" x1="1120" />
            <wire x2="1120" y1="640" y2="1312" x1="1120" />
            <wire x2="1424" y1="1312" y2="1312" x1="1120" />
            <wire x2="1120" y1="1312" y2="1680" x1="1120" />
        </branch>
        <branch name="C0">
            <wire x2="1424" y1="1824" y2="1824" x1="1056" />
            <wire x2="1456" y1="576" y2="576" x1="1392" />
            <wire x2="1392" y1="576" y2="1248" x1="1392" />
            <wire x2="1424" y1="1248" y2="1248" x1="1392" />
            <wire x2="1392" y1="1248" y2="1616" x1="1392" />
            <wire x2="1424" y1="1616" y2="1616" x1="1392" />
            <wire x2="1440" y1="1616" y2="1616" x1="1424" />
            <wire x2="1424" y1="1616" y2="1824" x1="1424" />
        </branch>
        <branch name="C1">
            <wire x2="2192" y1="1680" y2="1680" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1680" name="C1" orien="R0" />
        <instance x="1424" y="1568" name="XLXI_3" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1872" y1="1312" y2="1312" x1="1680" />
            <wire x2="1872" y1="1312" y2="1376" x1="1872" />
            <wire x2="1888" y1="1376" y2="1376" x1="1872" />
        </branch>
        <instance x="1888" y="1568" name="XLXI_6" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="1776" y1="1472" y2="1472" x1="1680" />
            <wire x2="1776" y1="1440" y2="1472" x1="1776" />
            <wire x2="1888" y1="1440" y2="1440" x1="1776" />
        </branch>
        <branch name="G1">
            <wire x2="1312" y1="1568" y2="1568" x1="1056" />
            <wire x2="1872" y1="1568" y2="1568" x1="1312" />
            <wire x2="1440" y1="1040" y2="1040" x1="1312" />
            <wire x2="1312" y1="1040" y2="1568" x1="1312" />
            <wire x2="1888" y1="1504" y2="1504" x1="1872" />
            <wire x2="1872" y1="1504" y2="1568" x1="1872" />
        </branch>
        <branch name="P1">
            <wire x2="1232" y1="1504" y2="1504" x1="1056" />
            <wire x2="1424" y1="1504" y2="1504" x1="1232" />
            <wire x2="1456" y1="704" y2="704" x1="1232" />
            <wire x2="1232" y1="704" y2="896" x1="1232" />
            <wire x2="1232" y1="896" y2="1376" x1="1232" />
            <wire x2="1424" y1="1376" y2="1376" x1="1232" />
            <wire x2="1232" y1="1376" y2="1504" x1="1232" />
            <wire x2="1456" y1="896" y2="896" x1="1232" />
        </branch>
        <instance x="1424" y="1440" name="XLXI_7" orien="R0" />
        <branch name="C2">
            <wire x2="2176" y1="1440" y2="1440" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1440" name="C2" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1728" y1="896" y2="896" x1="1712" />
            <wire x2="1904" y1="896" y2="896" x1="1728" />
            <wire x2="1904" y1="864" y2="896" x1="1904" />
            <wire x2="1920" y1="864" y2="864" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1232" name="G2" orien="R180" />
        <branch name="C3">
            <wire x2="2192" y1="896" y2="896" x1="2176" />
            <wire x2="2208" y1="896" y2="896" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2208" y="896" name="C3" orien="R0" />
        <branch name="P2">
            <wire x2="1264" y1="1104" y2="1104" x1="1056" />
            <wire x2="1440" y1="1104" y2="1104" x1="1264" />
            <wire x2="1456" y1="768" y2="768" x1="1264" />
            <wire x2="1264" y1="768" y2="960" x1="1264" />
            <wire x2="1264" y1="960" y2="1104" x1="1264" />
            <wire x2="1456" y1="960" y2="960" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1104" name="P2" orien="R180" />
        <instance x="1456" y="832" name="XLXI_10" orien="R0" />
        <instance x="1456" y="1024" name="XLXI_9" orien="R0" />
        <instance x="1440" y="1168" name="XLXI_8" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1712" y1="1072" y2="1072" x1="1696" />
            <wire x2="1792" y1="1072" y2="1072" x1="1712" />
            <wire x2="1792" y1="928" y2="1072" x1="1792" />
            <wire x2="1920" y1="928" y2="928" x1="1792" />
        </branch>
        <branch name="G2">
            <wire x2="1072" y1="1232" y2="1232" x1="1056" />
            <wire x2="1904" y1="1232" y2="1232" x1="1072" />
            <wire x2="1904" y1="992" y2="1232" x1="1904" />
            <wire x2="1920" y1="992" y2="992" x1="1904" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1728" y1="672" y2="672" x1="1712" />
            <wire x2="1920" y1="672" y2="672" x1="1728" />
            <wire x2="1920" y1="672" y2="800" x1="1920" />
        </branch>
        <instance x="1920" y="1056" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="1056" y="1504" name="P1" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1568" name="G1" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1680" name="P0" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1744" name="G0" orien="R180" />
        <iomarker fontsize="28" x="1056" y="1824" name="C0" orien="R180" />
    </sheet>
</drawing>