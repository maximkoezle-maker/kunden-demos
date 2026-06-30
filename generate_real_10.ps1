$ErrorActionPreference = "Stop"
$base_dir = "C:\Users\maxim\.gemini\antigravity\scratch\zeiss-maler"

# Array of hash tables for businesses
$businesses = @(
    @{ id="malerbetrieb-domsch"; name="Malerbetrieb Domsch"; email="malerarbeiten-domsch@web.de"; trade="Maler & Lackierer"; location="Dresden"; hero_bg="hero_haus.png"; emoji="🎨"; s1_title="Innenanstriche"; s1_desc="Hochwertige Farbgestaltung für Wohnräume."; s2_title="Fassaden"; s2_desc="Wetterfester Schutz und neue Optik für Ihr Haus."; s3_title="Tapezieren"; s3_desc="Präzises Tapezieren aller Tapetenarten." },
    @{ id="malerbetrieb-renner"; name="Rene Renner Malerbetrieb"; email="renerenner@gmx.de"; trade="Malerhandwerk"; location="Dresden-Jägerpark"; hero_bg="hero_haus.png"; emoji="🖌️"; s1_title="Malerarbeiten"; s1_desc="Professionelle Wand- und Deckengestaltung."; s2_title="Lackieren"; s2_desc="Schutz und Veredelung für Holz und Metall."; s3_title="Bodenbeläge"; s3_desc="Verlegung von Laminat und Designböden." },
    @{ id="raumdesign-bendlin"; name="Torsten Bendlin RAUMDESIGN"; email="til-bendlin@gmx.de"; trade="Raumausstattung & Design"; location="Dresden"; hero_bg="hero_holz.png"; emoji="✨"; s1_title="Raumkonzepte"; s1_desc="Ganzheitliche Gestaltung für Ihr Zuhause."; s2_title="Sonnenschutz"; s2_desc="Moderne Plissees und Jalousien nach Maß."; s3_title="Wandgestaltung"; s3_desc="Exklusive Spachteltechniken und Tapeten." },
    @{ id="tischlerei-goebel"; name="Tischlerei Göbel"; email="tischlerei-goebel@gmx.de"; trade="Möbel- & Innenausbau"; location="Dresden"; hero_bg="hero_holz.png"; emoji="🪚"; s1_title="Maßmöbel"; s1_desc="Individuelle Möbelstücke und Einbauschränke."; s2_title="Innenausbau"; s2_desc="Wandverkleidungen und Raumteiler aus Holz."; s3_title="Reparaturen"; s3_desc="Fachgerechte Aufarbeitung alter Möbel." },
    @{ id="moebeltischlerei-franz"; name="Möbeltischlerei Tom Franz"; email="Tischlerei-Franz@t-online.de"; trade="Holzhandwerk & Design"; location="Dresden"; hero_bg="hero_holz.png"; emoji="🪵"; s1_title="Möbelbau"; s1_desc="Hochwertige Unikate aus Massivholz."; s2_title="Küchen"; s2_desc="Planung und Bau individueller Traumküchen."; s3_title="Treppenbau"; s3_desc="Stilvolle Holztreppen nach Maß." },
    @{ id="dachdecker-patrzynski"; name="Dachdecker Rocco Patrzynski"; email="patrzynski@gmx.de"; trade="Dach- & Fassadenbau"; location="Dresden"; hero_bg="hero_haus.png"; emoji="🏠"; s1_title="Dacheindeckung"; s1_desc="Neubau und Sanierung von Steil- und Flachdächern."; s2_title="Dachfenster"; s2_desc="Einbau moderner Fenster für mehr Licht."; s3_title="Reparaturen"; s3_desc="Schnelle Hilfe bei Sturmschäden." },
    @{ id="schossau-sanitaer"; name="Schoßau Sanitär & Heizung"; email="schossau.sanitaer@web.de"; trade="Sanitär- & Heizungstechnik"; location="Dresden"; hero_bg="hero_fliesen.png"; emoji="💧"; s1_title="Badsanierung"; s1_desc="Ihr Weg zum neuen, modernen Traumbad."; s2_title="Heizung"; s2_desc="Wartung und Einbau effizienter Heizsysteme."; s3_title="Notdienst"; s3_desc="Schnelle Hilfe bei Rohrbrüchen und Störungen." },
    @{ id="klempner-lehmann"; name="Klempnermeister Torsten Lehmann"; email="klempner-lehmann@web.de"; trade="Klempnerei & Installation"; location="Dresden"; hero_bg="hero_fliesen.png"; emoji="🔧"; s1_title="Rohrreinigung"; s1_desc="Zuverlässige Beseitigung von Verstopfungen."; s2_title="Sanitär"; s2_desc="Installation von Armaturen und Wasserleitungen."; s3_title="Blecharbeiten"; s3_desc="Dachrinnen und Verblechungen am Haus." },
    @{ id="elektro-ortelt"; name="Elektro-Ortelt GmbH"; email="elektro-ortelt@t-online.de"; trade="Elektroinstallation"; location="Dresden"; hero_bg="hero_haus.png"; emoji="⚡"; s1_title="Hausinstallation"; s1_desc="Komplette Elektroanlagen für Neu- und Altbauten."; s2_title="Smart Home"; s2_desc="Intelligente Gebäudesteuerung und Vernetzung."; s3_title="E-Mobilität"; s3_desc="Installation von Wallboxen und Ladesäulen." },
    @{ id="elektro-schulz"; name="Elektroinstallationen Schulz"; email="elektro-markus-schulz@web.de"; trade="Elektrotechnik"; location="Dresden"; hero_bg="hero_haus.png"; emoji="💡"; s1_title="Lichttechnik"; s1_desc="Moderne Beleuchtungskonzepte für Wohn- und Gewerberäume."; s2_title="Kundendienst"; s2_desc="Schnelle Reparatur von Stromausfällen und Defekten."; s3_title="Netzwerke"; s3_desc="Aufbau zuverlässiger Daten- und Heimnetzwerke." }
)

# Template
$html_template = @"
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{0} | {1}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&display=swap" rel="stylesheet">
    <style>
        :root {{ --bg: #0f172a; --accent: #38bdf8; --card: #1e293b; --text: #f8fafc; --text-muted: #94a3b8; }}
        * {{ box-sizing: border-box; margin: 0; padding: 0; }}
        body {{ font-family: 'Inter', sans-serif; background-color: var(--bg); color: var(--text); line-height: 1.6; overflow-x: hidden; }}
        nav {{ padding: 1.5rem 5%; display: flex; justify-content: space-between; align-items: center; background: rgba(0, 0, 0, 0.4); backdrop-filter: blur(10px); position: fixed; width: 100%; top: 0; z-index: 100; border-bottom: 1px solid rgba(255,255,255,0.05); }}
        .logo {{ font-weight: 800; font-size: 1.5rem; letter-spacing: -0.5px; }}
        .logo span {{ color: var(--accent); }}
        .nav-links a {{ color: var(--text); text-decoration: none; margin-left: 2rem; font-weight: 600; font-size: 0.9rem; transition: color 0.3s ease; }}
        .nav-links a:hover {{ color: var(--accent); }}
        header {{ min-height: 100vh; display: flex; align-items: center; padding: 0 5%; background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.8)), url('../{3}') no-repeat center center/cover; position: relative; }}
        .hero-content {{ max-width: 800px; margin-top: 5rem; }}
        h1 {{ font-size: clamp(3rem, 5vw, 4.5rem); font-weight: 800; line-height: 1.1; margin-bottom: 1.5rem; color: #ffffff; text-shadow: 0 4px 20px rgba(0,0,0,0.5); }}
        .subtitle {{ font-size: 1.25rem; color: #e2e8f0; margin-bottom: 2.5rem; max-width: 600px; }}
        .btn {{ display: inline-block; padding: 1rem 2.5rem; background: var(--accent); color: #000; text-decoration: none; border-radius: 50px; font-weight: 600; transition: all 0.3s ease; box-shadow: 0 10px 20px -10px var(--accent); }}
        .btn:hover {{ transform: translateY(-3px); box-shadow: 0 15px 25px -10px var(--accent); }}
        .services {{ padding: 8rem 5%; background: var(--bg); }}
        .section-title {{ font-size: 2.5rem; font-weight: 800; margin-bottom: 4rem; text-align: center; }}
        .grid {{ display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; }}
        .card {{ background: var(--card); padding: 2.5rem; border-radius: 20px; border: 1px solid rgba(255,255,255,0.05); transition: all 0.3s ease; }}
        .card:hover {{ transform: translateY(-10px); border-color: rgba(255,255,255,0.1); background: rgba(255,255,255,0.05); }}
        .card h3 {{ font-size: 1.5rem; margin-bottom: 1rem; color: var(--accent); }}
        .card p {{ color: var(--text-muted); }}
        .contact {{ padding: 8rem 5%; background: var(--card); text-align: center; }}
        .contact-box {{ background: var(--bg); max-width: 800px; margin: 0 auto; padding: 4rem 2rem; border-radius: 24px; border: 1px solid rgba(255,255,255,0.05); }}
        .contact-box h2 {{ margin-bottom: 2rem; }}
        .contact-details {{ display: flex; flex-direction: column; gap: 1rem; font-size: 1.25rem; }}
        .contact-details a {{ color: var(--accent); text-decoration: none; font-weight: 600; }}
        footer {{ padding: 2rem 5%; text-align: center; color: var(--text-muted); border-top: 1px solid rgba(255,255,255,0.05); }}
        @media (max-width: 768px) {{ .nav-links {{ display: none; }} .hero-content {{ text-align: center; margin: 5rem auto 0; }} h1 {{ font-size: 2.5rem; }} }}
    </style>
</head>
<body>
    <nav>
        <div class="logo">{0}<span>.</span></div>
        <div class="nav-links">
            <a href="#leistungen">Leistungen</a>
            <a href="#kontakt">Kontakt</a>
        </div>
    </nav>
    <header>
        <div class="hero-content">
            <h1>Premium {1} in {2}.</h1>
            <p class="subtitle">Willkommen bei {0}. {4} Wir stehen für handwerkliche Perfektion, Zuverlässigkeit und moderne Lösungen für Ihr Projekt.</p>
            <a href="#kontakt" class="btn">Jetzt anfragen</a>
        </div>
    </header>
    <section id="leistungen" class="services">
        <h2 class="section-title">Unsere Leistungen</h2>
        <div class="grid">
            <div class="card">
                <h3>{5}</h3>
                <p>{6}</p>
            </div>
            <div class="card">
                <h3>{7}</h3>
                <p>{8}</p>
            </div>
            <div class="card">
                <h3>{9}</h3>
                <p>{10}</p>
            </div>
        </div>
    </section>
    <section id="kontakt" class="contact">
        <div class="contact-box">
            <h2 class="section-title" style="margin-bottom: 2rem;">Lassen Sie uns sprechen.</h2>
            <div class="contact-details">
                <p>📍 {2}</p>
                <p>✉️ <a href="mailto:{11}">{11}</a></p>
            </div>
        </div>
    </section>
    <footer>
        <p>&copy; 2026 {0}. Alle Rechte vorbehalten. | Ein Entwurf zur Vorschau.</p>
    </footer>
</body>
</html>
"@

# 1. Clean up old directories
$old_dirs = @(
    "dachdecker-franke", "fliesenleger-seifert", "fliesenleger-sengenberger",
    "gartenbau-schmidt", "gebaeudereinigung-glanzstueck", "geruestbau-richter",
    "klempnerei-wagner", "malerbetrieb-hoffmann", "tischlerei-berger", "trockenbau-lehmann",
    "ewerker-elektrotechnik", "holzgestaltung-buschbeck", "malerfirma-zeiss",
    "polsterei-schlitter", "raumdesign-bendlin"
)
$new_ids = $businesses | ForEach-Object { $_.id }

Get-ChildItem -Path $base_dir -Directory | ForEach-Object {
    if ($_.Name -ne ".git" -and $new_ids -notcontains $_.Name) {
        Write-Host "Removing old dir: $($_.Name)"
        Remove-Item -Path $_.FullName -Recurse -Force
    }
}

# 2. Create new directories and HTML files
$portal_links = ""
foreach ($b in $businesses) {
    $dir_path = Join-Path -Path $base_dir -ChildPath $b.id
    if (-not (Test-Path -Path $dir_path)) {
        New-Item -ItemType Directory -Path $dir_path | Out-Null
    }
    
    $html_content = $html_template -f $b.name, $b.trade, $b.location, $b.hero_bg, $b.emoji, $b.s1_title, $b.s1_desc, $b.s2_title, $b.s2_desc, $b.s3_title, $b.s3_desc, $b.email
    
    $file_path = Join-Path -Path $dir_path -ChildPath "index.html"
    [System.IO.File]::WriteAllText($file_path, $html_content, [System.Text.Encoding]::UTF8)
    
    $portal_links += @"
        <div class="card">
            <h3>$($b.name)</h3>
            <p>$($b.trade) | $($b.location)</p>
            <a href="$($b.id)/">Zum Entwurf &rarr;</a>
        </div>`n
"@
}

# 3. Update main portal index.html
$portal_html = @"
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kunden Demos | Premium Webdesign</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #0f172a; color: #f8fafc; margin: 0; padding: 4rem 5%; }
        h1 { text-align: center; margin-bottom: 3rem; color: #38bdf8; font-size: 2.5rem; }
        .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; max-width: 1200px; margin: 0 auto; }
        .card { background: #1e293b; padding: 2rem; border-radius: 16px; border: 1px solid rgba(255,255,255,0.1); }
        .card h3 { margin-top: 0; color: #fff; }
        .card p { color: #94a3b8; margin-bottom: 1.5rem; }
        .card a { display: inline-block; padding: 0.75rem 1.5rem; background: #38bdf8; color: #000; text-decoration: none; border-radius: 8px; font-weight: bold; transition: opacity 0.2s; }
        .card a:hover { opacity: 0.9; }
    </style>
</head>
<body>
    <h1>Aktuelle Kunden-Entwürfe (Dresden)</h1>
    <div class="grid">
$portal_links    </div>
</body>
</html>
"@

[System.IO.File]::WriteAllText((Join-Path -Path $base_dir -ChildPath "index.html"), $portal_html, [System.Text.Encoding]::UTF8)

Write-Host "Successfully generated all 10 real businesses!"
