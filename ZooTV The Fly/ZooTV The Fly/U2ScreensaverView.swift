//
//  SimpleScreensaverView.swift
//  SimpleScreensaver
//
//  Created by Joe Chavez on 5/13/23.
//

import ScreenSaver

struct Configuration {
    var backgroundColor: NSColor?
    var speed: Double?
    var fontName: String?
    var words: [String]?
}


class SimpleScreensaverView: ScreenSaverView {
    let words = [
        "EVERYTHING\nYOU\nKNOW\nIS\nWRONG",
        "BABY",
        "JOB",
        "LIES",
        "CAR",
        "THE\nFUTURE\nIS\nA\nFANTASY",
        "WIFE",
        "VICTIM",
        "FOOD",
        "SEXY",
        "WAR",
        "THE\nMEDIA\nIS\nTHE\nANTICHRIST",
        "BLOODY\nKIDS",
        "TRASH",
        "MOM",
        "FRENZY",
        "FISH",
        "COLOUR",
        "EVERYONE\nIS\nA\nRACIST\nEXCEPT\nYOU",
        "BOMB",
        "WHORE",
        "ULTIMATELY",
        "JAPAN",
        "CHAOS",
        "I\nWANT\nEVERYTHING",
        "DEATH\nIS\nINEVITABLE",
        "I\nWANT\nIT\nNOW",
        "GUN",
        "SCHOOL",
        "I\nWANT\nTO\nCHARGE\nIT",
        "DEBT",
        "DOUBT",
        "MOCK\nIT\nOR\nMILK\nIT",
        "REACTOR",
        "DIE",
        "HYPE",
        "HOPE",
        "WEAR\nA\nFAKE\nCONDOM",
        "NERVOUS",
        "PEACE",
        "SUICIDE",
        "JAPAN",
        "DAMAGE",
        "HEAVEN",
        "WE\nARE\nALL\nPART\nOF\nTHE\nMAILAISE",
        "CANDY",
        "NAPALM",
        "FLOWER",
        "HOSPITAL",
        "PANIC\nIS\nATTITUDE",
        "ENJOY\nTHE\nSURFACE",
        "SUPERFICIALITY\nIS\nGOD",
        "AVOID\nCONFLICT",
        "IGNORANCE\nIS\nBLISS",
        "CRY\nMORE\nOFTEN",
        "NOW",
        "MAKE\nFRIENDS",
        "CONSUME\nLATER",
        "DO\nNOT\nACCEPT\nWHAT\nYOU\nCANNOT\nCHANGE",
        "CHANGE\nWHAT\nYOU\nCANNOT\nACCEPT",
        "IT'S\nTHE\nREAL\nTHING",
        "BELIEVE\nEVERYTHING",
        "WATCH\nMORE\nTV",
        "INEVITABLE",
        "I\nWANT\nIT\nNOW",
        "DEATH\nIS\nINEVITABLE",
        "GUN",
        "SCHOOL",
        "I\nWANT\nTO\nCHANGE\nIT",
        "PUSSY",
        "DEBT",
        "INDULGE",
        "IGNORE",
        "WHY",
        "LUST",
        "LOVE",
        "URGE",
        "I\nLOVE\nYOU",
        "SURVIVE",
        "SOUL",
        "WAR",
        "MEMORY",
        "ATTACK",
        "SHATTER",
        "ILLUSION",
        "BABY",
        "FEAR",
        "BOOM",
        "STOP",
        "BLACK",
        "DARK",
        "HELLO",
        "RED",
        "GREEN",
        "BLACK",
        "BEACH",
        "INSTANT",
        "DEATH",
        "WHO\nCARES",
        "WHY\nSPEED",
        "WHY\nLOVE",
        "HYPOCRACY",
        "GARBAGE",
        "TASTE\nIS\nTHE\nENEMY\nOF\nART",
        "TRY\nMORE\nOFTEN",
        "LET\nME\nHEAR\nYOU\nSAY\nYEAH",
        "WALK",
        "PIZZA",
        "SECURITY",
        "COP",
        "VIOLENCE",
        "GOD",
        "JUNK",
        "SPIT",
        "BRAIN",
        "CURSE",
        "BARK",
        "SUGAR",
        "FREE",
        "BORN",
        "HIGH",
        "HEAD",
        "GREED\nIS\nGOOD",
        "FEED",
        "SEED",
        "FREED",
        "BREED",
        "WAR",
        "AMBITION\nBITES\nTHE\nNAILS\nOF\nSUCCESS",
        "REMEMBER\nWHAT\nYOU\nDREAM",
        "WAKE\nUP",
        "LOVE",
        "STOP",
        "DIE",
        "TV",
        "ICH\nLIEBE\nDICH",
        "TV",
        "I\nLOVE\nYOU",
        "STOP",
        "beLIEve",
        "WE\nARE\nNOT\nIMMUNE",
        "RIOT",
        "CRASH",
        "ZERO",
        "RELIGION\nIS\nA\nCLUB",
        "SELECT",
        "YOUR",
        "WEAKNESS",
        "CONTRADICTION\nIS\nBALANCE",
        "DRUG",
        "RUSH",
        "SUSIE",
        "MONICA",
        "GREG",
        "ALICE",
        "KEVIN",
        "SEAN",
        "PIERRE",
        "BEG",
        "MAURICE",
        "MARK",
        "PHILLIP",
        "EAMO",
        "HUBERT",
        "BRONWEN",
        "NED",
        "RAOUL",
        "FRITZ",
        "crawl\nM\nhugh",
        "COLIN",
        "LISA",
        "BRUNO",
        "TRIP",
        "A\nFRIEND\nIS\nSOMEONE\nWHO\nLETS\nYOU\nHELP",
        "VIOLENCE",
        "A\nLIAR\nWON'T\nBELIEVE\nANYONE\nELSE",
        "PUSH",
        "SECRET",
        "ART\nIS\nMANIPULATION",
        "FAKE",
        "I'D\nLIKE\nTO\nTEACH\nTHE\nWORLD\nTO\nSING",
        "DELAY",
        "CONSCIENCE\nIS\nA\nPEST",
        "CALL\nYOUR\nMOTHER",
        "OVER\nONE\nBILLION\nSERVED",
        "EVERY\nDAY\nIS\nA\nFLAG\nDAY\nIF\nYOUR\nFLAG\nIS\nA\nRAINBOW",
        "ATTEMPT\nTHE\nIMPOSSIBLE",
        "YOU\nARE\nA\nVICTIM\nOF\nYOUR\nPARENTS",
        "DEATH\nIS\nA\nCAREER\nMOVE",
        "IT'S\nYOUR\nWORLD\nYOU\nCAN\nCHANGE\nIT",
        "ATLANTIC\nCITY\nIS\nTHE\nNEW\nROME",
        "enjoy\nTHE\nsurFACE",
        "LOVE\nMEANS\nALWAYS\nHAVING\nTO\nCHANGE\nTHE\nLOCKS",
        "ambition\nbites\nthe\nnails\nof\nSUCCESS",
        "ROCK\nIS\nROLL\nIS\nENTERTAINMENT",
        "DIE\nIST\nEINE\nUTOPIE\nZUNKRUFT",
        "WATCH\nMORE\nTV",
    ]

    var currentWordIndex = 0
    
    var textAttributes: [NSAttributedString.Key: Any] = [:]
    var attributedText = NSAttributedString()

    var configuration: Configuration // Update with your specific Configuration type

    
    fileprivate func generateRandomTimeInterval() -> Double {
        let minTimeInterval: UInt32 = 250 // Minimum interval in milliseconds
        let maxTimeInterval: UInt32 = 550 // Maximum interval in milliseconds
        
        let randomTimeInterval = TimeInterval(arc4random_uniform(maxTimeInterval - minTimeInterval) + minTimeInterval) / 1000.0
        return randomTimeInterval
    }
    
    override var animationTimeInterval: TimeInterval {
        get {
            return generateRandomTimeInterval()
        }
        set {
            // NOP
        }
    }
    
    override init?(frame: NSRect, isPreview: Bool) {
        self.configuration = Configuration() // Initialize the configuration property
        
        super.init(frame: frame, isPreview: isPreview)
        animationTimeInterval = generateRandomTimeInterval()
        configureScreenSaver()
    }
    
    required init?(coder: NSCoder) {
        self.configuration = Configuration() // Initialize the configuration property
        
        super.init(coder: coder)
        animationTimeInterval = generateRandomTimeInterval()
        configureScreenSaver()
    }
    
    func configureScreenSaver() {
        
        // Set the background color from configuration
        if let backgroundColor = configuration.backgroundColor {
            self.wantsLayer = true
            self.layer?.backgroundColor = backgroundColor.cgColor
        }
        
        // Set the font name from configuration
        if let fontName = configuration.fontName {
            let fontSize: CGFloat = 50.0
            let font = NSFont(name: fontName, size: fontSize) ?? NSFont.systemFont(ofSize: fontSize)
            
            textAttributes = [
                .font: font,
                .foregroundColor: NSColor.white
            ]
        }
    }

    
    override func draw(_ rect: NSRect) {
        super.draw(rect)
        
        // Get the current word to display
        let word = words[currentWordIndex]
        
        let screenWidth = rect.size.width
        let screenHeight = rect.size.height
        
        let fontSize = min(screenWidth, screenHeight) * 0.1 // Adjust the scaling factor as needed
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center

        
        // Create the attributed string
        let attributes: [NSAttributedString.Key: Any] = [
            .font: NSFont.systemFont(ofSize: fontSize),
            .foregroundColor: NSColor.white,
            .paragraphStyle: paragraphStyle
        ]
        
        let textLines = word.components(separatedBy: "\n")
        
        var yPosition = (screenHeight - CGFloat(textLines.count) * fontSize) / 2
        
        for line in textLines {
            let textSize = line.size(withAttributes: attributes)
            let textRect = CGRect(
                x: (screenWidth - textSize.width) / 2,
                y: yPosition,
                width: textSize.width,
                height: textSize.height
            )
            
            line.draw(in: textRect, withAttributes: attributes)
            
            yPosition += textSize.height
        }
    }
    
    override func animateOneFrame() {
        super.animateOneFrame()
        
        // Increment the word index and wrap around to the beginning
        currentWordIndex = (currentWordIndex + 1) % words.count

        animationTimeInterval = generateRandomTimeInterval()
        
        // Redraw the screen
        needsDisplay = true
    }
    
//    override var hasConfigureSheet: Bool {
//        return false
//    }
//
//    override var configureSheet: NSWindow? {
//        return SimpleScreensaverConfigureWindowController.loadFromNib().window
//    }
}
