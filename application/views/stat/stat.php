<table border="1">
    <thead>
        <th>
            <tr>
                <td>REPARTITION PAR CANAL</td>
                <td>Point conseil</td>
                <td>Répa qualif</td>
                <td>Cumul</td>
            </tr>
        </th>
    </thead>
    <tbody>
        <tr>
            <td>P jaunes</td>
            <td><?= $pjpc ?></td>
            <td><?= $pjrq ?></td>
            <td><?= $pjrq + $pjpc ?></td>
        </tr>
        <tr>
            <td>Mini site</td>
            <td><?= $mspc ?></td>
            <td><?= $msrq ?></td>
            <td><?= $msrq + $mspc ?></td>
        </tr>
        <tr>
            <td>Total</td>
            <td><?= $pjpc + $mspc ?></td>
            <td><?= $pjrq + $msrq ?></td>
            <td><?= $pjrq + $pjpc + $msrq + $mspc ?></td>
        </tr>
    </tbody>
</table>