import os

businesses = [
    {
        "id": "fliesenleger-sengenberger",
        "name": "Fliesenleger Sengenberger",
        "owner": "Herr Sengenberger",
        "trade": "Fliesen & Naturstein",
        "address": "Dresden-Briesnitz",
        "phone": "0351 12345601",
        "email": "kontakt@sengenberger-fliesen.de",
        "color1": "#0f172a", "color2": "#3b82f6", "color3": "#1e293b",
        "icon": "🧱",
        "services": [("Badsanierung", "Komplette Badgestaltung aus einer Hand."), ("Großformatfliesen", "Moderne XXL-Fliesen für fugenlose Optik."), ("Naturstein", "Hochwertige Natursteinarbeiten für drinnen und draußen.")]
    },
    {
        "id": "fliesenleger-seifert",
        "name": "Fliesenleger Seifert",
        "owner": "Sven Seifert",
        "trade": "Badsanierung & Fliesen",
        "address": "Dresden-Striesen",
        "phone": "0172 23456702",
        "email": "info@seifert-fliesen.de",
        "color1": "#18181b", "color2": "#10b981", "color3": "#27272a",
        "icon": "🛁",
        "services": [("3D Badplanung", "Wir visualisieren Ihr neues Bad vorab."), ("Mosaikarbeiten", "Detailverliebte Mosaike für besondere Akzente."), ("Balkon & Terrasse", "Frostsichere Verlegung im Außenbereich.")]
    },
    {
        "id": "klempnerei-wagner",
        "name": "Klempnerei Wagner",
        "owner": "Herr Wagner",
        "trade": "Sanitär & Heizung",
        "address": "Dresden-Prohlis",
        "phone": "0351 34567803",
        "email": "service@wagner-sanitaer.de",
        "color1": "#0c4a6e", "color2": "#38bdf8", "color3": "#075985",
        "icon": "🚰",
        "services": [("Heizungsbau", "Effiziente Heizsysteme und Wärmepumpen."), ("Sanitärinstallation", "Moderne Wasserinstallationen für Neubau und Sanierung."), ("Notdienst", "Schnelle Hilfe bei Rohrbrüchen und Störungen.")]
    },
    {
        "id": "dachdecker-franke",
        "name": "Dachdeckermeister Franke",
        "owner": "Herr Franke",
        "trade": "Bedachungen & Spenglerei",
        "address": "Dresden-Leuben",
        "phone": "0173 45678904",
        "email": "info@dach-franke.de",
        "color1": "#451a03", "color2": "#fb923c", "color3": "#78350f",
        "icon": "🏠",
        "services": [("Steildach", "Ziegeldächer, Schiefer und Neueindeckungen."), ("Flachdach", "Abdichtungen und Flachdachsanierungen."), ("Klempnerei", "Dachrinnen, Fallrohre und Blecharbeiten.")]
    },
    {
        "id": "gartenbau-schmidt",
        "name": "Gartenbau Schmidt",
        "owner": "Herr Schmidt",
        "trade": "Landschaftsarchitektur & Pflege",
        "address": "Dresden-Pieschen",
        "phone": "0351 56789005",
        "email": "post@garten-schmidt-dresden.de",
        "color1": "#14532d", "color2": "#4ade80", "color3": "#166534",
        "icon": "🌳",
        "services": [("Gartengestaltung", "Wir planen und bauen Ihre grüne Oase."), ("Pflasterarbeiten", "Wege, Einfahrten und Terrassen aus Naturstein."), ("Baumpflege", "Professioneller Gehölzschnitt und Fällungen.")]
    },
    {
        "id": "trockenbau-lehmann",
        "name": "Trockenbau Lehmann",
        "owner": "Herr Lehmann",
        "trade": "Innenausbau & Akustik",
        "address": "Dresden-Gorbitz",
        "phone": "0174 67890106",
        "email": "info@lehmann-ausbau.de",
        "color1": "#1e293b", "color2": "#94a3b8", "color3": "#334155",
        "icon": "🏗️",
        "services": [("Decken & Wände", "Abhängte Decken und leichte Trennwände."), ("Akustikbau", "Optimierung der Raumakustik für Büros und Wohnräume."), ("Dachausbau", "Schaffung von neuem Wohnraum unterm Dach.")]
    },
    {
        "id": "tischlerei-berger",
        "name": "Tischlerei Berger",
        "owner": "Herr Berger",
        "trade": "Fensterbau & Maßmöbel",
        "address": "Dresden-Klotzsche",
        "phone": "0351 78901207",
        "email": "kontakt@tischlerei-berger.de",
        "color1": "#422006", "color2": "#d97706", "color3": "#78350f",
        "icon": "🪚",
        "services": [("Maßmöbel", "Individuelle Einbauschränke und Möbelstücke."), ("Fenster & Türen", "Montage von energieeffizienten Fenstern und Haustüren."), ("Innenausbau", "Holzböden, Treppen und Wandverkleidungen.")]
    },
    {
        "id": "gebaeudereinigung-glanzstueck",
        "name": "Gebäudereinigung Glanzstück",
        "owner": "Das Glanzstück-Team",
        "trade": "Gewerbe- & Unterhaltsreinigung",
        "address": "Dresden-Neustadt",
        "phone": "0175 89012308",
        "email": "info@glanzstueck-dresden.de",
        "color1": "#082f49", "color2": "#0ea5e9", "color3": "#0369a1",
        "icon": "✨",
        "services": [("Unterhaltsreinigung", "Regelmäßige Reinigung für Büros und Kanzleien."), ("Glasreinigung", "Streifenfreie Fenster, Schaufenster und Fassaden."), ("Bauendreinigung", "Grundreinigung nach Neubau oder Sanierung.")]
    },
    {
        "id": "geruestbau-richter",
        "name": "Gerüstbau Richter",
        "owner": "Herr Richter",
        "trade": "Fassadengerüste & Sonderbau",
        "address": "Dresden-Cotta",
        "phone": "0351 90123409",
        "email": "anfrage@richter-geruest.de",
        "color1": "#27272a", "color2": "#eab308", "color3": "#3f3f46",
        "icon": "🪜",
        "services": [("Fassadengerüste", "Sichere Arbeitsgerüste für Maler und Dachdecker."), ("Schutzgerüste", "Dachfanggerüste und Passantenschutz."), ("Sonderkonstruktionen", "Individuelle Gerüstlösungen für komplexe Bauten.")]
    },
    {
        "id": "malerbetrieb-hoffmann",
        "name": "Malerbetrieb Hoffmann",
        "owner": "Herr Hoffmann",
        "trade": "Kreative Wandgestaltung",
        "address": "Dresden-Löbtau",
        "phone": "0176 01234510",
        "email": "maler-hoffmann@web.de",
        "color1": "#312e81", "color2": "#8b5cf6", "color3": "#4338ca",
        "icon": "🎨",
        "services": [("Tapezierarbeiten", "Fachgerechtes Tapezieren aller Tapetenarten."), ("Lackieren & Lasieren", "Schutz und Veredelung von Holz und Metall."), ("Fassadengestaltung", "Wetterschutz und neue Farbe für Ihr Haus.")]
    }
]

html_template = """<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{name} | {trade}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&display=swap" rel="stylesheet">
    <style>
        :root {{
            --bg: {color1};
            --accent: {color2};
            --card: {color3};
            --text: #f8fafc;
            --text-muted: #94a3b8;
        }}
        
        * {{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }}

        body {{
            font-family: 'Inter', sans-serif;
            background-color: var(--bg);
            color: var(--text);
            line-height: 1.6;
            overflow-x: hidden;
        }}

        /* Navbar */
        nav {{
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
        }}

        .logo {{
            font-weight: 800;
            font-size: 1.5rem;
            letter-spacing: -0.5px;
        }}

        .logo span {{ color: var(--accent); }}

        .nav-links a {{
            color: var(--text);
            text-decoration: none;
            margin-left: 2rem;
            font-weight: 600;
            font-size: 0.9rem;
            transition: color 0.3s ease;
        }}

        .nav-links a:hover {{ color: var(--accent); }}

        /* Hero */
        header {{
            min-height: 100vh;
            display: flex;
            align-items: center;
            padding: 0 5%;
            background: radial-gradient(circle at top right, var(--card), var(--bg));
            position: relative;
        }}

        .hero-content {{
            max-width: 800px;
            margin-top: 5rem;
        }}

        h1 {{
            font-size: clamp(3rem, 5vw, 4.5rem);
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 1.5rem;
            background: linear-gradient(to right, #fff, var(--text-muted));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }}

        .subtitle {{
            font-size: 1.25rem;
            color: var(--text-muted);
            margin-bottom: 2.5rem;
            max-width: 600px;
        }}

        .btn {{
            display: inline-block;
            padding: 1rem 2.5rem;
            background: var(--accent);
            color: #fff;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 10px 20px -10px var(--accent);
        }}

        .btn:hover {{
            transform: translateY(-3px);
            box-shadow: 0 15px 25px -10px var(--accent);
        }}

        /* Services */
        .services {{
            padding: 8rem 5%;
            background: var(--bg);
        }}

        .section-title {{
            font-size: 2.5rem;
            font-weight: 800;
            margin-bottom: 4rem;
            text-align: center;
        }}

        .grid {{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }}

        .card {{
            background: var(--card);
            padding: 2.5rem;
            border-radius: 20px;
            border: 1px solid rgba(255,255,255,0.05);
            transition: all 0.3s ease;
        }}

        .card:hover {{
            transform: translateY(-10px);
            border-color: rgba(255,255,255,0.1);
            background: rgba(255,255,255,0.05);
        }}

        .card h3 {{
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--accent);
        }}

        .card p {{ color: var(--text-muted); }}

        /* Contact */
        .contact {{
            padding: 8rem 5%;
            background: var(--card);
            text-align: center;
        }}

        .contact-box {{
            background: var(--bg);
            max-width: 800px;
            margin: 0 auto;
            padding: 4rem 2rem;
            border-radius: 24px;
            border: 1px solid rgba(255,255,255,0.05);
        }}

        .contact-box h2 {{ margin-bottom: 2rem; }}

        .contact-details {{
            display: flex;
            flex-direction: column;
            gap: 1rem;
            font-size: 1.25rem;
        }}

        .contact-details a {{
            color: var(--accent);
            text-decoration: none;
            font-weight: 600;
        }}

        /* Footer */
        footer {{
            padding: 2rem 5%;
            text-align: center;
            color: var(--text-muted);
            border-top: 1px solid rgba(255,255,255,0.05);
        }}

        @media (max-width: 768px) {{
            .nav-links {{ display: none; }}
            .hero-content {{ text-align: center; margin: 5rem auto 0; }}
            h1 {{ font-size: 2.5rem; }}
        }}
    </style>
</head>
<body>

    <nav>
        <div class="logo">{name}<span>.</span></div>
        <div class="nav-links">
            <a href="#leistungen">Leistungen</a>
            <a href="#kontakt">Kontakt</a>
        </div>
    </nav>

    <header>
        <div class="hero-content">
            <h1>Premium {trade} in {address}.</h1>
            <p class="subtitle">Willkommen bei {name}. Wir stehen für handwerkliche Perfektion, Zuverlässigkeit und moderne Lösungen für Ihr Projekt.</p>
            <a href="#kontakt" class="btn">Jetzt anfragen</a>
        </div>
    </header>

    <section id="leistungen" class="services">
        <h2 class="section-title">Unsere Leistungen</h2>
        <div class="grid">
            <div class="card">
                <h3>{srv1_title}</h3>
                <p>{srv1_desc}</p>
            </div>
            <div class="card">
                <h3>{srv2_title}</h3>
                <p>{srv2_desc}</p>
            </div>
            <div class="card">
                <h3>{srv3_title}</h3>
                <p>{srv3_desc}</p>
            </div>
        </div>
    </section>

    <section id="kontakt" class="contact">
        <div class="contact-box">
            <h2 class="section-title" style="margin-bottom: 2rem;">Lassen Sie uns sprechen.</h2>
            <div class="contact-details">
                <p>📍 {address}</p>
                <p>📞 <a href="tel:{phone_href}">{phone}</a></p>
                <p>✉️ <a href="mailto:{email}">{email}</a></p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2026 {name}. Alle Rechte vorbehalten. | Ein Entwurf zur Vorschau.</p>
    </footer>

</body>
</html>
"""

def generate():
    base_dir = r"C:\Users\maxim\.gemini\antigravity\scratch\zeiss-maler"
    
    for b in businesses:
        dir_path = os.path.join(base_dir, b["id"])
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)
            
        html_content = html_template.format(
            name=b["name"],
            trade=b["trade"],
            color1=b["color1"],
            color2=b["color2"],
            color3=b["color3"],
            address=b["address"],
            phone=b["phone"],
            phone_href=b["phone"].replace(" ", ""),
            email=b["email"],
            srv1_title=b["services"][0][0],
            srv1_desc=b["services"][0][1],
            srv2_title=b["services"][1][0],
            srv2_desc=b["services"][1][1],
            srv3_title=b["services"][2][0],
            srv3_desc=b["services"][2][1],
        )
        
        with open(os.path.join(dir_path, "index.html"), "w", encoding="utf-8") as f:
            f.write(html_content)
        
        print(f"Generated {b['name']}")

if __name__ == "__main__":
    generate()
