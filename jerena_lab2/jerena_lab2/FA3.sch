<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_22" />
        <signal name="B0" />
        <signal name="A0" />
        <signal name="XLXN_38" />
        <signal name="B1" />
        <signal name="A1" />
        <signal name="C" />
        <signal name="XLXN_45" />
        <signal name="B2" />
        <signal name="A2" />
        <signal name="S0" />
        <signal name="S1" />
        <signal name="S2" />
        <signal name="C0" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A1" />
        <port polarity="Output" name="C" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A2" />
        <port polarity="Output" name="S0" />
        <port polarity="Output" name="S1" />
        <port polarity="Output" name="S2" />
        <port polarity="Input" name="C0" />
        <blockdef name="FA">
            <timestamp>2020-12-1T1:33:33</timestamp>
            <rect width="160" x="64" y="-224" height="160" />
            <line x2="176" y1="-224" y2="-288" x1="176" />
            <line x2="112" y1="-224" y2="-288" x1="112" />
            <line x2="288" y1="-176" y2="-176" x1="224" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <line x2="112" y1="-64" y2="0" x1="112" />
        </blockdef>
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
        <block symbolname="FA" name="XLXI_1">
            <blockpin signalname="A0" name="Ai" />
            <blockpin signalname="XLXN_22" name="Bi" />
            <blockpin signalname="C0" name="Ci" />
            <blockpin signalname="XLXN_1" name="Ci1" />
            <blockpin signalname="S0" name="Si" />
        </block>
        <block symbolname="FA" name="XLXI_2">
            <blockpin signalname="A1" name="Ai" />
            <blockpin signalname="XLXN_38" name="Bi" />
            <blockpin signalname="XLXN_1" name="Ci" />
            <blockpin signalname="XLXN_2" name="Ci1" />
            <blockpin signalname="S1" name="Si" />
        </block>
        <block symbolname="xor2" name="XLXI_28">
            <blockpin signalname="B0" name="I0" />
            <blockpin signalname="C0" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_29">
            <blockpin signalname="B1" name="I0" />
            <blockpin signalname="C0" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_31">
            <blockpin signalname="B2" name="I0" />
            <blockpin signalname="C0" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="FA" name="XLXI_33">
            <blockpin signalname="A2" name="Ai" />
            <blockpin signalname="XLXN_45" name="Bi" />
            <blockpin signalname="XLXN_2" name="Ci" />
            <blockpin signalname="C" name="Ci1" />
            <blockpin signalname="S2" name="Si" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1920" y="1488" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1920" y1="1312" y2="1312" x1="1888" />
        </branch>
        <instance x="1600" y="1488" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1600" y1="1312" y2="1312" x1="1568" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2032" y1="1184" y2="1184" x1="2016" />
            <wire x2="2032" y1="1184" y2="1200" x1="2032" />
        </branch>
        <branch name="B0">
            <wire x2="1984" y1="880" y2="912" x1="1984" />
            <wire x2="1984" y1="912" y2="928" x1="1984" />
        </branch>
        <branch name="A0">
            <wire x2="2096" y1="880" y2="1200" x1="2096" />
        </branch>
        <instance x="1920" y="928" name="XLXI_28" orien="R90" />
        <branch name="XLXN_38">
            <wire x2="1712" y1="1184" y2="1184" x1="1696" />
            <wire x2="1712" y1="1184" y2="1200" x1="1712" />
        </branch>
        <instance x="1600" y="928" name="XLXI_29" orien="R90" />
        <branch name="B1">
            <wire x2="1664" y1="880" y2="912" x1="1664" />
            <wire x2="1664" y1="912" y2="928" x1="1664" />
        </branch>
        <branch name="A1">
            <wire x2="1776" y1="880" y2="1184" x1="1776" />
            <wire x2="1776" y1="1184" y2="1200" x1="1776" />
        </branch>
        <branch name="C">
            <wire x2="1280" y1="1312" y2="1312" x1="1248" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1392" y1="1184" y2="1184" x1="1376" />
            <wire x2="1392" y1="1184" y2="1200" x1="1392" />
        </branch>
        <branch name="B2">
            <wire x2="1344" y1="880" y2="912" x1="1344" />
            <wire x2="1344" y1="912" y2="928" x1="1344" />
        </branch>
        <branch name="A2">
            <wire x2="1456" y1="880" y2="1200" x1="1456" />
        </branch>
        <instance x="1280" y="928" name="XLXI_31" orien="R90" />
        <instance x="1280" y="1488" name="XLXI_33" orien="R0">
        </instance>
        <branch name="S0">
            <wire x2="2032" y1="1488" y2="1520" x1="2032" />
        </branch>
        <branch name="S1">
            <wire x2="1712" y1="1488" y2="1520" x1="1712" />
        </branch>
        <branch name="S2">
            <wire x2="1392" y1="1488" y2="1520" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="2096" y="880" name="A0" orien="R270" />
        <iomarker fontsize="28" x="1456" y="880" name="A2" orien="R270" />
        <iomarker fontsize="28" x="2032" y="1520" name="S0" orien="R90" />
        <iomarker fontsize="28" x="1712" y="1520" name="S1" orien="R90" />
        <iomarker fontsize="28" x="1392" y="1520" name="S2" orien="R90" />
        <iomarker fontsize="28" x="1248" y="1312" name="C" orien="R180" />
        <iomarker fontsize="28" x="2352" y="896" name="C0" orien="R0" />
        <branch name="C0">
            <wire x2="1728" y1="896" y2="896" x1="1408" />
            <wire x2="2048" y1="896" y2="896" x1="1728" />
            <wire x2="2224" y1="896" y2="896" x1="2048" />
            <wire x2="2352" y1="896" y2="896" x1="2224" />
            <wire x2="2224" y1="896" y2="1312" x1="2224" />
            <wire x2="2048" y1="896" y2="912" x1="2048" />
            <wire x2="2048" y1="912" y2="928" x1="2048" />
            <wire x2="1728" y1="896" y2="928" x1="1728" />
            <wire x2="1408" y1="896" y2="928" x1="1408" />
            <wire x2="2224" y1="1312" y2="1312" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="1984" y="880" name="B0" orien="R270" />
        <iomarker fontsize="28" x="1776" y="880" name="A1" orien="R270" />
        <iomarker fontsize="28" x="1664" y="880" name="B1" orien="R270" />
        <iomarker fontsize="28" x="1344" y="880" name="B2" orien="R270" />
    </sheet>
</drawing>