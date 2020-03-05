<body>
    <header>
        <img src="<?= base_url('assets/img/bubendorff.png') ?>" alt="" class="logo">
        <h1>Statistiques</h1>
        <h2>du <?= $start ?> au <?= $end ?></h2>
    </header>
    <table class="statistiques">
        <thead>
            <th>
                <tr>
                    <td class="titre">REPARTITION PAR CANAL</td>
                    <td class="titre">Point conseil</td>
                    <td class="titre">Réparateur qualifié</td>
                    <td class="titre">Typage</td>
                    <td class="titre">Cumul</td>
                </tr>
            </th>
        </thead>
        <tbody>
            <tr>
                <td class="titre">Pages jaunes</td>
                <td class="info-stat"><?= $pjpc ?></td>
                <td class="info-stat"><?= $pjrq ?></td>
                <td class="info-stat"><?= $pjtp ?></td>
                <td class="info-stat"><?= $pjrq + $pjpc + $pjtp ?></td>
            </tr>
            <tr>
                <td class="titre">Mini site</td>
                <td class="info-stat"><?= $mspc ?></td>
                <td class="info-stat"><?= $msrq ?></td>
                <td class="info-stat"><?= $mstp ?></td>
                <td class="info-stat"><?= $msrq + $mspc + $mstp ?></td>
            </tr>

            <tr>
                <td class="total">Total</td>
                <td class="total info-stat"><?= $pjpc + $mspc ?></td>
                <td class="total info-stat"><?= $pjrq + $msrq ?></td>
                <td class="total info-stat"><?= $pjtp + $mstp ?></td>
                <td class="total info-stat"><?= $pjrq + $pjpc + $pjtp + $msrq + $mspc + $mstp ?></td>
            </tr>
        </tbody>
    </table>
    <footer>
        <table>
            <tr>
                <td>
                    <img src="<?= base_url('assets/img/logoelise1.png') ?>" alt="" class="logo-elise"><br>
                </td>
                <td class="infos">
                    <p>SIRET : 41033285200020</p>
                    <p>Tél : +33 (0) 3 83 15 16 66</p>
                    <p>Mél : contact@elise.fr</p>
                    <p>3, allée des Tilleuls - 54180 Heillecourt</p>
                </td>
            </tr>
        </table>
    </footer>
</body>
