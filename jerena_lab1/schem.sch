<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="XLXN_7" />
        <signal name="B" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="Y" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Output" name="Y" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="Y" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="1440" name="XLXI_1" orien="R0" />
        <instance x="1440" y="1168" name="XLXI_2" orien="R0" />
        <instance x="1440" y="1680" name="XLXI_3" orien="R0" />
        <instance x="1840" y="1424" name="XLXI_4" orien="R0" />
        <branch name="A">
            <wire x2="1152" y1="1040" y2="1040" x1="912" />
            <wire x2="1440" y1="1040" y2="1040" x1="1152" />
            <wire x2="1152" y1="1040" y2="1056" x1="1152" />
            <wire x2="1152" y1="1056" y2="1056" x1="1072" />
            <wire x2="1072" y1="1056" y2="1312" x1="1072" />
            <wire x2="1152" y1="1312" y2="1312" x1="1072" />
        </branch>
        <branch name="B">
            <wire x2="1088" y1="1616" y2="1616" x1="944" />
            <wire x2="1440" y1="1616" y2="1616" x1="1088" />
            <wire x2="1152" y1="1376" y2="1376" x1="1088" />
            <wire x2="1088" y1="1376" y2="1616" x1="1088" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1360" y1="1104" y2="1216" x1="1360" />
            <wire x2="1488" y1="1216" y2="1216" x1="1360" />
            <wire x2="1488" y1="1216" y2="1344" x1="1488" />
            <wire x2="1488" y1="1344" y2="1472" x1="1488" />
            <wire x2="1440" y1="1104" y2="1104" x1="1360" />
            <wire x2="1376" y1="1472" y2="1552" x1="1376" />
            <wire x2="1440" y1="1552" y2="1552" x1="1376" />
            <wire x2="1488" y1="1472" y2="1472" x1="1376" />
            <wire x2="1488" y1="1344" y2="1344" x1="1408" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1760" y1="1072" y2="1072" x1="1696" />
            <wire x2="1760" y1="1072" y2="1296" x1="1760" />
            <wire x2="1840" y1="1296" y2="1296" x1="1760" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1760" y1="1584" y2="1584" x1="1696" />
            <wire x2="1760" y1="1360" y2="1584" x1="1760" />
            <wire x2="1840" y1="1360" y2="1360" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="912" y="1040" name="A" orien="R180" />
        <iomarker fontsize="28" x="944" y="1616" name="B" orien="R180" />
        <branch name="Y">
            <wire x2="2128" y1="1328" y2="1328" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2128" y="1328" name="Y" orien="R0" />
    </sheet>
</drawing>