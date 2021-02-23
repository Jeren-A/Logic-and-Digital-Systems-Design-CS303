<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Ai" />
        <signal name="Bi" />
        <signal name="XLXN_3">
        </signal>
        <signal name="XLXN_4">
        </signal>
        <signal name="Si" />
        <signal name="Ci1" />
        <signal name="XLXN_7" />
        <signal name="Ci" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <port polarity="Input" name="Ai" />
        <port polarity="Input" name="Bi" />
        <port polarity="Output" name="Si" />
        <port polarity="Output" name="Ci1" />
        <port polarity="Input" name="Ci" />
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
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="Bi" name="I0" />
            <blockpin signalname="Ai" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="Ci" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="Si" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="Bi" name="I0" />
            <blockpin signalname="Ai" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="Ci" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="Ci1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="1264" name="XLXI_1" orien="R0" />
        <instance x="1808" y="1296" name="XLXI_2" orien="R0" />
        <instance x="1280" y="1488" name="XLXI_3" orien="R0" />
        <instance x="1808" y="1504" name="XLXI_4" orien="R0" />
        <instance x="2176" y="1536" name="XLXI_5" orien="R0" />
        <branch name="Ai">
            <wire x2="1264" y1="1136" y2="1136" x1="1184" />
            <wire x2="1280" y1="1136" y2="1136" x1="1264" />
            <wire x2="1264" y1="1136" y2="1360" x1="1264" />
            <wire x2="1280" y1="1360" y2="1360" x1="1264" />
        </branch>
        <branch name="Bi">
            <wire x2="1232" y1="1200" y2="1200" x1="1184" />
            <wire x2="1280" y1="1200" y2="1200" x1="1232" />
            <wire x2="1232" y1="1200" y2="1424" x1="1232" />
            <wire x2="1280" y1="1424" y2="1424" x1="1232" />
        </branch>
        <branch name="Si">
            <wire x2="2368" y1="1200" y2="1200" x1="2064" />
        </branch>
        <branch name="Ci1">
            <wire x2="2448" y1="1440" y2="1440" x1="2432" />
            <wire x2="2464" y1="1440" y2="1440" x1="2448" />
        </branch>
        <branch name="Ci">
            <wire x2="1728" y1="1584" y2="1584" x1="1184" />
            <wire x2="1808" y1="1232" y2="1232" x1="1728" />
            <wire x2="1728" y1="1232" y2="1440" x1="1728" />
            <wire x2="1728" y1="1440" y2="1584" x1="1728" />
            <wire x2="1808" y1="1440" y2="1440" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1584" name="Ci" orien="R180" />
        <iomarker fontsize="28" x="1184" y="1200" name="Bi" orien="R180" />
        <iomarker fontsize="28" x="1184" y="1136" name="Ai" orien="R180" />
        <iomarker fontsize="28" x="2368" y="1200" name="Si" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2176" y1="1408" y2="1408" x1="2064" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1584" y1="1392" y2="1392" x1="1536" />
            <wire x2="1584" y1="1392" y2="1472" x1="1584" />
            <wire x2="2176" y1="1472" y2="1472" x1="1584" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1792" y1="1168" y2="1168" x1="1536" />
            <wire x2="1808" y1="1168" y2="1168" x1="1792" />
            <wire x2="1792" y1="1168" y2="1376" x1="1792" />
            <wire x2="1808" y1="1376" y2="1376" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="2464" y="1440" name="Ci1" orien="R0" />
    </sheet>
</drawing>