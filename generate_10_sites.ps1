$businesses = @(
    @{ id="fliesenleger-sengenberger"; name="Fliesenleger Sengenberger"; owner="Herr Sengenberger"; trade="Fliesen & Naturstein"; address="Dresden-Briesnitz"; phone="0351 12345601"; email="kontakt@sengenberger-fliesen.de"; color1="#0f172a"; color2="#3b82f6"; color3="#1e293b"; icon="🧱"; srv1_t="Badsanierung"; srv1_d="Komplette Badgestaltung aus einer Hand."; srv2_t="Großformatfliesen"; srv2_d="Moderne XXL-Fliesen für fugenlose Optik."; srv3_t="Naturstein"; srv3_d="Hochwertige Natursteinarbeiten für drinnen und draußen." },
    @{ id="fliesenleger-seifert"; name="Fliesenleger Seifert"; owner="Sven Seifert"; trade="Badsanierung & Fliesen"; address="Dresden-Striesen"; phone="0172 23456702"; email="info@seifert-fliesen.de"; color1="#18181b"; color2="#10b981"; color3="#27272a"; icon="🛁"; srv1_t="3D Badplanung"; srv1_d="Wir visualisieren Ihr neues Bad vorab."; srv2_t="Mosaikarbeiten"; srv2_d="Detailverliebte Mosaike für besondere Akzente."; srv3_t="Balkon & Terrasse"; srv3_d="Frostsichere Verlegung im Außenbereich." },
    @{ id="klempnerei-wagner"; name="Klempnerei Wagner"; owner="Herr Wagner"; trade="Sanitär & Heizung"; address="Dresden-Prohlis"; phone="0351 34567803"; email="service@wagner-sanitaer.de"; color1="#0c4a6e"; color2="#38bdf8"; color3="#075985"; icon="🚰"; srv1_t="Heizungsbau"; srv1_d="Effiziente Heizsysteme und Wärmepumpen."; srv2_t="Sanitärinstallation"; srv2_d="Moderne Wasserinstallationen für Neubau und Sanierung."; srv3_t="Notdienst"; srv3_d="Schnelle Hilfe bei Rohrbrüchen und Störungen." },
    @{ id="dachdecker-franke"; name="Dachdeckermeister Franke"; owner="Herr Franke"; trade="Bedachungen & Spenglerei"; address="Dresden-Leuben"; phone="0173 45678904"; email="info@dach-franke.de"; color1="#451a03"; color2="#fb923c"; color3="#78350f"; icon="🏠"; srv1_t="Steildach"; srv1_d="Ziegeldächer, Schiefer und Neueindeckungen."; srv2_t="Flachdach"; srv2_d="Abdichtungen und Flachdachsanierungen."; srv3_t="Klempnerei"; srv3_d="Dachrinnen, Fallrohre und Blecharbeiten." },
    @{ id="gartenbau-schmidt"; name="Gartenbau Schmidt"; owner="Herr Schmidt"; trade="Landschaftsarchitektur & Pflege"; address="Dresden-Pieschen"; phone="0351 56789005"; email="post@garten-schmidt-dresden.de"; color1="#14532d"; color2="#4ade80"; color3="#166534"; icon="🌳"; srv1_t="Gartengestaltung"; srv1_d="Wir planen und bauen Ihre grüne Oase."; srv2_t="Pflasterarbeiten"; srv2_d="Wege, Einfahrten und Terrassen aus Naturstein."; srv3_t="Baumpflege"; srv3_d="Professioneller Gehölzschnitt und Fällungen." },
    @{ id="trockenbau-lehmann"; name="Trockenbau Lehmann"; owner="Herr Lehmann"; trade="Innenausbau & Akustik"; address="Dresden-Gorbitz"; phone="0174 67890106"; email="info@lehmann-ausbau.de"; color1="#1e293b"; color2="#94a3b8"; color3="#334155"; icon="🏗️"; srv1_t="Decken & Wände"; srv1_d="Abhängte Decken und leichte Trennwände."; srv2_t="Akustikbau"; srv2_d="Optimierung der Raumakustik für Büros und Wohnräume."; srv3_t="Dachausbau"; srv3_d="Schaffung von neuem Wohnraum unterm Dach." },
    @{ id="tischlerei-berger"; name="Tischlerei Berger"; owner="Herr Berger"; trade="Fensterbau & Maßmöbel"; address="Dresden-Klotzsche"; phone="0351 78901207"; email="kontakt@tischlerei-berger.de"; color1="#422006"; color2="#d97706"; color3="#78350f"; icon="🪚"; srv1_t="Maßmöbel"; srv1_d="Individuelle Einbauschränke und Möbelstücke."; srv2_t="Fenster & Türen"; srv2_d="Montage von energieeffizienten Fenstern und Haustüren."; srv3_t="Innenausbau"; srv3_d="Holzböden, Treppen und Wandverkleidungen." },
    @{ id="gebaeudereinigung-glanzstueck"; name="Gebäudereinigung Glanzstück"; owner="Das Glanzstück-Team"; trade="Gewerbe- & Unterhaltsreinigung"; address="Dresden-Neustadt"; phone="0175 89012308"; email="info@glanzstueck-dresden.de"; color1="#082f49"; color2="#0ea5e9"; color3="#0369a1"; icon="✨"; srv1_t="Unterhaltsreinigung"; srv1_d="Regelmäßige Reinigung für Büros und Kanzleien."; srv2_t="Glasreinigung"; srv2_d="Streifenfreie Fenster, Schaufenster und Fassaden."; srv3_t="Bauendreinigung"; srv3_d="Grundreinigung nach Neubau oder Sanierung." },
    @{ id="geruestbau-richter"; name="Gerüstbau Richter"; owner="Herr Richter"; trade="Fassadengerüste & Sonderbau"; address="Dresden-Cotta"; phone="0351 90123409"; email="anfrage@richter-geruest.de"; color1="#27272a"; color2="#eab308"; color3="#3f3f46"; icon="🪜"; srv1_t="Fassadengerüste"; srv1_d="Sichere Arbeitsgerüste für Maler und Dachdecker."; srv2_t="Schutzgerüste"; srv2_d="Dachfanggerüste und Passantenschutz."; srv3_t="Sonderkonstruktionen"; srv3_d="Individuelle Gerüstlösungen für komplexe Bauten." },
    @{ id="malerbetrieb-hoffmann"; name="Malerbetrieb Hoffmann"; owner="Herr Hoffmann"; trade="Kreative Wandgestaltung"; address="Dresden-Löbtau"; phone="0176 01234510"; email="maler-hoffmann@web.de"; color1="#312e81"; color2="#8b5cf6"; color3="#4338ca"; icon="🎨"; srv1_t="Tapezierarbeiten"; srv1_d="Fachgerechtes Tapezieren aller Tapetenarten."; srv2_t="Lackieren & Lasieren"; srv2_d="Schutz und Veredelung von Holz und Metall."; srv3_t="Fassadengestaltung"; srv3_d="Wetterschutz und neue Farbe für Ihr Haus." }
)

$template = @"
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{name}} | {{trade}}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg: {{color1}};
            --accent: {{color2}};
            --card: {{color3}};
            --text: #f8fafc;
            --text-muted: #94a3b8;
        }
        
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--bg);
            color: var(--text);
            line-height: 1.6;
            overflow-x: hidden;
        }

        nav {
            padding: 1.5rem 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 100;
            border-bottom: 1px solid rgba(255,255,255,0.05);
        }

        .logo {
            font-weight: 800;
            font-size: 1.5rem;
            letter-spacing: -0.5px;
        }

        .logo span { color: var(--accent); }

        .nav-links a {
            color: var(--text);
            text-decoration: none;
            margin-left: 2rem;
            font-weight: 600;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }

        .nav-links a:hover { color: var(--accent); }

        header {
            min-height: 100vh;
            display: flex;
            align-items: center;
            padding: 0 5%;
            background: radial-gradient(circle at top right, var(--card), var(--bg));
            position: relative;
        }

        .hero-content {
            max-width: 800px;
            margin-top: 5rem;
        }

        h1 {
            font-size: clamp(3rem, 5vw, 4.5rem);
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 1.5rem;
            background: linear-gradient(to right, #fff, var(--text-muted));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .subtitle {
            font-size: 1.25rem;
            color: var(--text-muted);
            margin-bottom: 2.5rem;
            max-width: 600px;
        }

        .btn {
            display: inline-block;
            padding: 1rem 2.5rem;
            background: var(--accent);
            color: #fff;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 10px 20px -10px var(--accent);
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 25px -10px var(--accent);
        }

        .services {
            padding: 8rem 5%;
            background: var(--bg);
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 800;
            margin-bottom: 4rem;
            text-align: center;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .card {
            background: var(--card);
            padding: 2.5rem;
            border-radius: 20px;
            border: 1px solid rgba(255,255,255,0.05);
            transition: all 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            border-color: rgba(255,255,255,0.1);
            background: rgba(255,255,255,0.05);
        }

        .card h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--accent);
        }

        .card p { color: var(--text-muted); }

        .contact {
            padding: 8rem 5%;
            background: var(--card);
            text-align: center;
        }

        .contact-box {
            background: var(--bg);
            max-width: 800px;
            margin: 0 auto;
            padding: 4rem 2rem;
            border-radius: 24px;
            border: 1px solid rgba(255,255,255,0.05);
        }

        .contact-box h2 { margin-bottom: 2rem; }

        .contact-details {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            font-size: 1.25rem;
        }

        .contact-details a {
            color: var(--accent);
            text-decoration: none;
            font-weight: 600;
        }

        footer {
            padding: 2rem 5%;
            text-align: center;
            color: var(--text-muted);
            border-top: 1px solid rgba(255,255,255,0.05);
        }

        @media (max-width: 768px) {
            .nav-links { display: none; }
            .hero-content { text-align: center; margin: 5rem auto 0; }
            h1 { font-size: 2.5rem; }
        }
    </style>
</head>
<body>

    <nav>
        <div class="logo">{{name}}<span>.</span></div>
        <div class="nav-links">
            <a href="#leistungen">Leistungen</a>
            <a href="#kontakt">Kontakt</a>
        </div>
    </nav>

    <header>
        <div class="hero-content">
            <h1>Premium {{trade}} in {{address}}.</h1>
            <p class="subtitle">Willkommen bei {{name}}. {{icon}} Wir stehen für handwerkliche Perfektion, Zuverlässigkeit und moderne Lösungen für Ihr Projekt.</p>
            <a href="#kontakt" class="btn">Jetzt anfragen</a>
        </div>
    </header>

    <section id="leistungen" class="services">
        <h2 class="section-title">Unsere Leistungen</h2>
        <div class="grid">
            <div class="card">
                <h3>{{srv1_t}}</h3>
                <p>{{srv1_d}}</p>
            </div>
            <div class="card">
                <h3>{{srv2_t}}</h3>
                <p>{{srv2_d}}</p>
            </div>
            <div class="card">
                <h3>{{srv3_t}}</h3>
                <p>{{srv3_d}}</p>
            </div>
        </div>
    </section>

    <section id="kontakt" class="contact">
        <div class="contact-box">
            <h2 class="section-title" style="margin-bottom: 2rem;">Lassen Sie uns sprechen.</h2>
            <div class="contact-details">
                <p>📍 {{address}}</p>
                <p>📞 <a href="tel:{{phone_href}}">{{phone}}</a></p>
                <p>✉️ <a href="mailto:{{email}}">{{email}}</a></p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2026 {{name}}. Alle Rechte vorbehalten. | Ein Entwurf zur Vorschau.</p>
    </footer>

</body>
</html>
"@

$baseDir = "C:\Users\maxim\.gemini\antigravity\scratch\zeiss-maler"

foreach ($b in $businesses) {
    $dirPath = Join-Path $baseDir $b.id
    if (-not (Test-Path $dirPath)) {
        New-Item -ItemType Directory -Path $dirPath | Out-Null
    }
    
    $htmlContent = $template
    $htmlContent = $htmlContent -replace '\{\{name\}\}', $b.name
    $htmlContent = $htmlContent -replace '\{\{trade\}\}', $b.trade
    $htmlContent = $htmlContent -replace '\{\{color1\}\}', $b.color1
    $htmlContent = $htmlContent -replace '\{\{color2\}\}', $b.color2
    $htmlContent = $htmlContent -replace '\{\{color3\}\}', $b.color3
    $htmlContent = $htmlContent -replace '\{\{address\}\}', $b.address
    $htmlContent = $htmlContent -replace '\{\{phone\}\}', $b.phone
    $htmlContent = $htmlContent -replace '\{\{phone_href\}\}', ($b.phone -replace ' ', '')
    $htmlContent = $htmlContent -replace '\{\{email\}\}', $b.email
    $htmlContent = $htmlContent -replace '\{\{icon\}\}', $b.icon
    $htmlContent = $htmlContent -replace '\{\{srv1_t\}\}', $b.srv1_t
    $htmlContent = $htmlContent -replace '\{\{srv1_d\}\}', $b.srv1_d
    $htmlContent = $htmlContent -replace '\{\{srv2_t\}\}', $b.srv2_t
    $htmlContent = $htmlContent -replace '\{\{srv2_d\}\}', $b.srv2_d
    $htmlContent = $htmlContent -replace '\{\{srv3_t\}\}', $b.srv3_t
    $htmlContent = $htmlContent -replace '\{\{srv3_d\}\}', $b.srv3_d

    $filePath = Join-Path $dirPath "index.html"
    Set-Content -Path $filePath -Value $htmlContent -Encoding UTF8
    Write-Host "Generated $($b.name)"
}
