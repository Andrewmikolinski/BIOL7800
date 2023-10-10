
library("dplyr")
library("ggplot2")
library("data.table")

AstL <- read.csv("Asterales.csv")
LamL <- read.csv("Lamiales.csv")
CarL <- read.csv("Caryophyllales.csv")
FabL <- read.csv("Fabales.csv")
RosL <- read.csv("Rosales.csv")
EriL <- read.csv("Ericales.csv")
RanL <- read.csv("Ranunculales.csv")
GenL <- read.csv("Gentianales.csv")
SapL <- read.csv("Sapindales.csv")
MalpL <- read.csv("Malpighiales.csv")
FagL <- read.csv("Fagales.csv")
BraL <- read.csv("Brassicales.csv")
DL <- read.csv("Dipsacales.csv")
ApiL <- read.csv("Apiales.csv")
SolL <- read.csv("Solanales.csv")
SaxL <- read.csv("Saxifragales.csv")
BorL <- read.csv("Boraginales.csv")
MyrL <- read.csv("Myrtales.csv")
MalvL <- read.csv("Malvales.csv")
VL <- read.csv("Vitales.csv")
GerL <- read.csv("Geraniales.csv")
ZL <- read.csv("Zygophyllales.csv")
CorL <- read.csv("Cornales.csv")
MagL <- read.csv("Magnoliales.csv")
LauL <- read.csv("Laurales.csv")
CelL <- read.csv("Celastrales.csv")
AquL <- read.csv("Aquifoliales.csv")
CucL <- read.csv("Cucurbitales.csv")
OL <- read.csv("Oxalidales.csv")
PipL <- read.csv("Piperales.csv")
ProL <- read.csv("Proteales.csv")
NL <- read.csv("Nymphaeales.csv")
SanL <- read.csv("Santalales.csv")
GarL <- read.csv("Garryales.csv")
CroL <- read.csv("Crossomatales.csv")
CerL <- read.csv("Ceratophyllales.csv")

AstL32 <- AstL[AstL$decimalLatitude > 29.999999 & AstL$decimalLatitude < 32.000001, ] 
LamL32 <- LamL[LamL$decimalLatitude > 29.999999 & LamL$decimalLatitude < 32.000001, ] 
CarL32 <- CarL[CarL$decimalLatitude > 29.999999 & CarL$decimalLatitude < 32.000001, ]
FabL32 <- FabL[FabL$decimalLatitude > 29.999999 & FabL$decimalLatitude < 32.000001, ]
RosL32 <- RosL[RosL$decimalLatitude > 29.999999 & RosL$decimalLatitude < 32.000001, ] 
EriL32 <- EriL[EriL$decimalLatitude > 29.999999 & EriL$decimalLatitude < 32.000001, ] 
RanL32 <- RanL[RanL$decimalLatitude > 29.999999 & RanL$decimalLatitude < 32.000001, ] 
GenL32 <- GenL[GenL$decimalLatitude > 29.999999 & GenL$decimalLatitude < 32.000001, ] 
SapL32 <- SapL[SapL$decimalLatitude > 29.999999 & SapL$decimalLatitude < 32.000001, ] 
MalpL32 <- MalpL[MalpL$decimalLatitude > 29.999999 & MalpL$decimalLatitude < 32.000001, ] 
FagL32 <- FagL[FagL$decimalLatitude > 29.999999 & FagL$decimalLatitude < 32.000001, ] 
BraL32 <- BraL[BraL$decimalLatitude > 29.999999 & BraL$decimalLatitude < 32.000001, ]
DL32 <- DL[DL$decimalLatitude > 29.999999 & DL$decimalLatitude < 32.000001, ]
ApiL32 <- ApiL[ApiL$decimalLatitude > 29.999999 & ApiL$decimalLatitude < 32.000001, ]
SolL32 <- SolL[SolL$decimalLatitude > 29.999999 & SolL$decimalLatitude < 32.000001, ]
SaxL32 <- SaxL[SaxL$decimalLatitude > 29.999999 & SaxL$decimalLatitude < 32.000001, ]
BorL32 <- BorL[BorL$decimalLatitude > 29.999999 & BorL$decimalLatitude < 32.000001, ]
MyrL32 <- MyrL[MyrL$decimalLatitude > 29.999999 & MyrL$decimalLatitude < 32.000001, ]
MalvL32 <- MalvL[MalvL$decimalLatitude > 29.999999 & MalvL$decimalLatitude < 32.000001, ]
VL32 <- VL[VL$decimalLatitude > 29.999999 & VL$decimalLatitude < 32.000001, ]
GerL32 <- GerL[GerL$decimalLatitude > 29.999999 & GerL$decimalLatitude < 32.000001, ]
ZL32 <- ZL[ZL$decimalLatitude > 29.999999 & ZL$decimalLatitude < 32.000001, ]
CorL32 <- CorL[CorL$decimalLatitude > 29.999999 & CorL$decimalLatitude < 32.000001, ]
MagL32 <- MagL[MagL$decimalLatitude > 29.999999 & MagL$decimalLatitude < 32.000001, ]
LauL32 <- LauL[LauL$decimalLatitude > 29.999999 & LauL$decimalLatitude < 32.000001, ]
CelL32 <- CelL[CelL$decimalLatitude > 29.999999 & CelL$decimalLatitude < 32.000001, ]
AquL32 <- AquL[AquL$decimalLatitude > 29.999999 & AquL$decimalLatitude < 32.000001, ]
OL32 <- OL[OL$decimalLatitude > 29.999999 & OL$decimalLatitude < 32.000001, ]
CucL32 <- CucL[CucL$decimalLatitude > 29.999999 & CucL$decimalLatitude < 32.000001, ]
PipL32 <- PipL[PipL$decimalLatitude > 29.999999 & PipL$decimalLatitude < 32.000001, ]
ProL32 <- ProL[ProL$decimalLatitude > 29.999999 & ProL$decimalLatitude < 32.000001, ]
NL32 <- NL[NL$decimalLatitude > 29.999999 & NL$decimalLatitude < 32.000001, ]
SanL32 <- SanL[SanL$decimalLatitude > 29.999999 & SanL$decimalLatitude < 32.000001, ]
GarL32 <- GarL[GarL$decimalLatitude > 29.999999 & GarL$decimalLatitude < 32.000001, ]
CroL32 <- CroL[CroL$decimalLatitude > 29.999999 & CroL$decimalLatitude < 32.000001, ]
CerL32 <- CarL[CerL$decimalLatitude > 29.999999 & CerL$decimalLatitude < 32.000001, ]

df32 <- rbind(AstL32, LamL32, CarL32, FabL32, RosL32, EriL32, GenL32, RanL32, SapL32, MalpL32, FagL32, BraL32, DL32, ApiL32, SolL32, SaxL32, BorL32, MyrL32, MalvL32, VL32, GerL32, ZL32, CorL32, MagL32, LauL32, CelL32, AquL32, OL32, CucL32, PipL32, ProL32, NL32, SanL32, GarL32, CroL32, CerL32)

AstL34 <- AstL[AstL$decimalLatitude > 32.000000 & AstL$decimalLatitude < 34.000001, ] 
LamL34 <- LamL[LamL$decimalLatitude > 32.000000 & LamL$decimalLatitude < 34.000001, ] 
CarL34 <- CarL[CarL$decimalLatitude > 32.000000 & CarL$decimalLatitude < 34.000001, ]
FabL34 <- FabL[FabL$decimalLatitude > 32.000000 & FabL$decimalLatitude < 34.000001, ]
RosL34 <- RosL[RosL$decimalLatitude > 32.000000 & RosL$decimalLatitude < 34.000001, ] 
EriL34 <- EriL[EriL$decimalLatitude > 32.000000 & EriL$decimalLatitude < 34.000001, ] 
RanL34 <- RanL[RanL$decimalLatitude > 32.000000 & RanL$decimalLatitude < 34.000001, ] 
GenL34 <- GenL[GenL$decimalLatitude > 32.000000 & GenL$decimalLatitude < 34.000001, ] 
SapL34 <- SapL[SapL$decimalLatitude > 32.000000 & SapL$decimalLatitude < 34.000001, ] 
MalpL34 <- MalpL[MalpL$decimalLatitude > 32.000000 & MalpL$decimalLatitude < 34.000001, ] 
FagL34 <- FagL[FagL$decimalLatitude > 32.000000 & FagL$decimalLatitude < 34.000001, ] 
BraL34 <- BraL[BraL$decimalLatitude > 32.000000 & BraL$decimalLatitude < 34.000001, ]
DL34 <- DL[DL$decimalLatitude > 32.000000 & DL$decimalLatitude < 34.000001, ]
ApiL34 <- ApiL[ApiL$decimalLatitude > 32.000000 & ApiL$decimalLatitude < 34.000001, ]
SolL34 <- SolL[SolL$decimalLatitude > 32.000000 & SolL$decimalLatitude < 34.000001, ]
SaxL34 <- SaxL[SaxL$decimalLatitude > 32.000000 & SaxL$decimalLatitude < 34.000001, ]
BorL34 <- BorL[BorL$decimalLatitude > 32.000000 & BorL$decimalLatitude < 34.000001, ]
MyrL34 <- MyrL[MyrL$decimalLatitude > 32.000000 & MyrL$decimalLatitude < 34.000001, ]
MalvL34 <- MalvL[MalvL$decimalLatitude > 32.000000 & MalvL$decimalLatitude < 34.000001, ]
VL34 <- VL[VL$decimalLatitude > 32.000000 & VL$decimalLatitude < 34.000001, ]
GerL34 <- GerL[GerL$decimalLatitude > 32.000000 & GerL$decimalLatitude < 34.000001, ]
ZL34 <- ZL[ZL$decimalLatitude > 32.000000 & ZL$decimalLatitude < 34.000001, ]
CorL34 <- CorL[CorL$decimalLatitude > 32.000000 & CorL$decimalLatitude < 34.000001, ]
MagL34 <- MagL[MagL$decimalLatitude > 32.000000 & MagL$decimalLatitude < 34.000001, ]
LauL34 <- LauL[LauL$decimalLatitude > 32.000000 & LauL$decimalLatitude < 34.000001, ]
CelL34 <- CelL[CelL$decimalLatitude > 32.000000 & CelL$decimalLatitude < 34.000001, ]
AquL34 <- AquL[AquL$decimalLatitude > 32.000000 & AquL$decimalLatitude < 34.000001, ]
OL34 <- OL[OL$decimalLatitude > 32.000000 & OL$decimalLatitude < 34.000001, ]
CucL34 <- CucL[CucL$decimalLatitude > 32.000000 & CucL$decimalLatitude < 34.000001, ]
PipL34 <- PipL[PipL$decimalLatitude > 32.000000 & PipL$decimalLatitude < 34.000001, ]
ProL34 <- ProL[ProL$decimalLatitude > 32.000000 & ProL$decimalLatitude < 34.000001, ]
NL34 <- NL[NL$decimalLatitude > 32.000000 & NL$decimalLatitude < 34.000001, ]
SanL34 <- SanL[SanL$decimalLatitude > 32.000000 & SanL$decimalLatitude < 34.000001, ]
GarL34 <- GarL[GarL$decimalLatitude > 32.000000 & GarL$decimalLatitude < 34.000001, ]
CroL34 <- CroL[CroL$decimalLatitude > 32.000000 & CroL$decimalLatitude < 34.000001, ]
CerL34 <- CarL[CerL$decimalLatitude > 32.000000 & CerL$decimalLatitude < 34.000001, ]

df34 <- rbind(AstL34, LamL34, CarL34, FabL34, RosL34, EriL34, GenL34, RanL34, SapL34, MalpL34, FagL34, BraL34, DL34, ApiL34, SolL34, SaxL34, BorL34, MyrL34, MalvL34, VL34, GerL34, ZL34, CorL34, MagL34, LauL34, CelL34, AquL34, OL34, CucL34, PipL34, ProL34, NL34, SanL34, GarL34, CroL34, CerL34)

AstL38 <- AstL[AstL$decimalLatitude > 36.000000 & AstL$decimalLatitude < 38.000001,  ] 
LamL38 <- LamL[LamL$decimalLatitude > 36.000000 & LamL$decimalLatitude < 38.000001,  ] 
CarL38 <- CarL[CarL$decimalLatitude > 36.000000 & CarL$decimalLatitude < 38.000001,  ]
FabL38 <- FabL[FabL$decimalLatitude > 36.000000 & FabL$decimalLatitude < 38.000001,  ]
RosL38 <- RosL[RosL$decimalLatitude > 36.000000 & RosL$decimalLatitude < 38.000001,  ] 
EriL38 <- EriL[EriL$decimalLatitude > 36.000000 & EriL$decimalLatitude < 38.000001,  ] 
RanL38 <- RanL[RanL$decimalLatitude > 36.000000 & RanL$decimalLatitude < 38.000001,  ] 
GenL38 <- GenL[GenL$decimalLatitude > 36.000000 & GenL$decimalLatitude < 38.000001,  ] 
SapL38 <- SapL[SapL$decimalLatitude > 36.000000 & SapL$decimalLatitude < 38.000001,  ] 
MalpL38 <- MalpL[MalpL$decimalLatitude > 36.000000 & MalpL$decimalLatitude < 38.000001,  ] 
FagL38 <- FagL[FagL$decimalLatitude > 36.000000 & FagL$decimalLatitude < 38.000001,  ] 
BraL38 <- BraL[BraL$decimalLatitude > 36.000000 & BraL$decimalLatitude < 38.000001,  ]
DL38 <- DL[DL$decimalLatitude > 36.000000 & DL$decimalLatitude < 38.000001,  ]
ApiL38 <- ApiL[ApiL$decimalLatitude > 36.000000 & ApiL$decimalLatitude < 38.000001,  ]
SolL38 <- SolL[SolL$decimalLatitude > 36.000000 & SolL$decimalLatitude < 38.000001,  ]
SaxL38 <- SaxL[SaxL$decimalLatitude > 36.000000 & SaxL$decimalLatitude < 38.000001,  ]
BorL38 <- BorL[BorL$decimalLatitude > 36.000000 & BorL$decimalLatitude < 38.000001,  ]
MyrL38 <- MyrL[MyrL$decimalLatitude > 36.000000 & MyrL$decimalLatitude < 38.000001,  ]
MalvL38 <- MalvL[MalvL$decimalLatitude > 36.000000 & MalvL$decimalLatitude < 38.000001,  ]
VL38 <- VL[VL$decimalLatitude > 36.000000 & VL$decimalLatitude < 38.000001,  ]
GerL38 <- GerL[GerL$decimalLatitude > 36.000000 & GerL$decimalLatitude < 38.000001,  ]
ZL38 <- ZL[ZL$decimalLatitude > 36.000000 & ZL$decimalLatitude < 38.000001,  ]
CorL38 <- CorL[CorL$decimalLatitude > 36.000000 & CorL$decimalLatitude < 38.000001,  ]
MagL38 <- MagL[MagL$decimalLatitude > 36.000000 & MagL$decimalLatitude < 38.000001,  ]
LauL38 <- LauL[LauL$decimalLatitude > 36.000000 & LauL$decimalLatitude < 38.000001,  ]
CelL38 <- CelL[CelL$decimalLatitude > 36.000000 & CelL$decimalLatitude < 38.000001,  ]
AquL38 <- AquL[AquL$decimalLatitude > 36.000000 & AquL$decimalLatitude < 38.000001,  ]
OL38 <- OL[OL$decimalLatitude > 36.000000 & OL$decimalLatitude < 38.000001,  ]
CucL38 <- CucL[CucL$decimalLatitude > 36.000000 & CucL$decimalLatitude < 38.000001,  ]
PipL38 <- PipL[PipL$decimalLatitude > 36.000000 & PipL$decimalLatitude < 38.000001,  ]
ProL38 <- ProL[ProL$decimalLatitude > 36.000000 & ProL$decimalLatitude < 38.000001,  ]
NL38 <- NL[NL$decimalLatitude > 36.000000 & NL$decimalLatitude < 38.000001,  ]
SanL38 <- SanL[SanL$decimalLatitude > 36.000000 & SanL$decimalLatitude < 38.000001,  ]
GarL38 <- GarL[GarL$decimalLatitude > 36.000000 & GarL$decimalLatitude < 38.000001,  ]
CroL38 <- CroL[CroL$decimalLatitude > 36.000000 & CroL$decimalLatitude < 38.000001,  ]
CerL38 <- CarL[CerL$decimalLatitude > 36.000000 & CerL$decimalLatitude < 38.000001,  ]

df38 <- rbind(AstL38, LamL38, CarL38, FabL38, RosL38, EriL38, GenL38, RanL38, SapL38, MalpL38, FagL38, BraL38, DL38, ApiL38, SolL38, SaxL38, BorL38, MyrL38, MalvL38, VL38, GerL38, ZL38, CorL38, MagL38, LauL38, CelL38, AquL38, OL38, CucL38, PipL38, ProL38, NL38, SanL38, GarL38, CroL38, CerL38)

AstL40 <- AstL[AstL$decimalLatitude > 38.000000 & AstL$decimalLatitude < 40.000001,  ] 
LamL40 <- LamL[LamL$decimalLatitude > 38.000000 & LamL$decimalLatitude < 40.000001,  ] 
CarL40 <- CarL[CarL$decimalLatitude > 38.000000 & CarL$decimalLatitude < 40.000001,  ]
FabL40 <- FabL[FabL$decimalLatitude > 38.000000 & FabL$decimalLatitude < 40.000001,  ]
RosL40 <- RosL[RosL$decimalLatitude > 38.000000 & RosL$decimalLatitude < 40.000001,  ] 
EriL40 <- EriL[EriL$decimalLatitude > 38.000000 & EriL$decimalLatitude < 40.000001,  ] 
RanL40 <- RanL[RanL$decimalLatitude > 38.000000 & RanL$decimalLatitude < 40.000001,  ] 
GenL40 <- GenL[GenL$decimalLatitude > 38.000000 & GenL$decimalLatitude < 40.000001,  ] 
SapL40 <- SapL[SapL$decimalLatitude > 38.000000 & SapL$decimalLatitude < 40.000001,  ] 
MalpL40 <- MalpL[MalpL$decimalLatitude > 38.000000 & MalpL$decimalLatitude < 40.000001,  ] 
FagL40 <- FagL[FagL$decimalLatitude > 38.000000 & FagL$decimalLatitude < 40.000001,  ] 
BraL40 <- BraL[BraL$decimalLatitude > 38.000000 & BraL$decimalLatitude < 40.000001,  ]
DL40 <- DL[DL$decimalLatitude > 38.000000 & DL$decimalLatitude < 40.000001,  ]
ApiL40 <- ApiL[ApiL$decimalLatitude > 38.000000 & ApiL$decimalLatitude < 40.000001,  ]
SolL40 <- SolL[SolL$decimalLatitude > 38.000000 & SolL$decimalLatitude < 40.000001,  ]
SaxL40 <- SaxL[SaxL$decimalLatitude > 38.000000 & SaxL$decimalLatitude < 40.000001,  ]
BorL40 <- BorL[BorL$decimalLatitude > 38.000000 & BorL$decimalLatitude < 40.000001,  ]
MyrL40 <- MyrL[MyrL$decimalLatitude > 38.000000 & MyrL$decimalLatitude < 40.000001,  ]
MalvL40 <- MalvL[MalvL$decimalLatitude > 38.000000 & MalvL$decimalLatitude < 40.000001,  ]
VL40 <- VL[VL$decimalLatitude > 38.000000 & VL$decimalLatitude < 40.000001,  ]
GerL40 <- GerL[GerL$decimalLatitude > 38.000000 & GerL$decimalLatitude < 40.000001,  ]
ZL40 <- ZL[ZL$decimalLatitude > 38.000000 & ZL$decimalLatitude < 40.000001,  ]
CorL40 <- CorL[CorL$decimalLatitude > 38.000000 & CorL$decimalLatitude < 40.000001,  ]
MagL40 <- MagL[MagL$decimalLatitude > 38.000000 & MagL$decimalLatitude < 40.000001,  ]
LauL40 <- LauL[LauL$decimalLatitude > 38.000000 & LauL$decimalLatitude < 40.000001,  ]
CelL40 <- CelL[CelL$decimalLatitude > 38.000000 & CelL$decimalLatitude < 40.000001,  ]
AquL40 <- AquL[AquL$decimalLatitude > 38.000000 & AquL$decimalLatitude < 40.000001,  ]
OL40 <- OL[OL$decimalLatitude > 38.000000 & OL$decimalLatitude < 40.000001,  ]
CucL40 <- CucL[CucL$decimalLatitude > 38.000000 & CucL$decimalLatitude < 40.000001,  ]
PipL40 <- PipL[PipL$decimalLatitude > 38.000000 & PipL$decimalLatitude < 40.000001,  ]
ProL40 <- ProL[ProL$decimalLatitude > 38.000000 & ProL$decimalLatitude < 40.000001,  ]
NL40 <- NL[NL$decimalLatitude > 38.000000 & NL$decimalLatitude < 40.000001,  ]
SanL40 <- SanL[SanL$decimalLatitude > 38.000000 & SanL$decimalLatitude < 40.000001,  ]
GarL40 <- GarL[GarL$decimalLatitude > 38.000000 & GarL$decimalLatitude < 40.000001,  ]
CroL40 <- CroL[CroL$decimalLatitude > 38.000000 & CroL$decimalLatitude < 40.000001,  ]
CerL40 <- CarL[CerL$decimalLatitude > 38.000000 & CerL$decimalLatitude < 40.000001,  ]

df40 <- rbind(AstL40, LamL40, CarL40, FabL40, RosL40, EriL40, GenL40, RanL40, SapL40, MalpL40, FagL40, BraL40, DL40, ApiL40, SolL40, SaxL40, BorL40, MyrL40, MalvL40, VL40, GerL40, ZL40, CorL40, MagL40, LauL40, CelL40, AquL40, OL40, CucL40, PipL40, ProL40, NL40, SanL40, GarL40, CroL40, CerL40)

AstL42 <- AstL[AstL$decimalLatitude > 40.000000 & AstL$decimalLatitude < 42.000001,  ] 
LamL42 <- LamL[LamL$decimalLatitude > 40.000000 & LamL$decimalLatitude < 42.000001,  ] 
CarL42 <- CarL[CarL$decimalLatitude > 40.000000 & CarL$decimalLatitude < 42.000001,  ]
FabL42 <- FabL[FabL$decimalLatitude > 40.000000 & FabL$decimalLatitude < 42.000001,  ]
RosL42 <- RosL[RosL$decimalLatitude > 40.000000 & RosL$decimalLatitude < 42.000001,  ] 
EriL42 <- EriL[EriL$decimalLatitude > 40.000000 & EriL$decimalLatitude < 42.000001,  ] 
RanL42 <- RanL[RanL$decimalLatitude > 40.000000 & RanL$decimalLatitude < 42.000001,  ] 
GenL42 <- GenL[GenL$decimalLatitude > 40.000000 & GenL$decimalLatitude < 42.000001,  ] 
SapL42 <- SapL[SapL$decimalLatitude > 40.000000 & SapL$decimalLatitude < 42.000001,  ] 
MalpL42 <- MalpL[MalpL$decimalLatitude > 40.000000 & MalpL$decimalLatitude < 42.000001,  ] 
FagL42 <- FagL[FagL$decimalLatitude > 40.000000 & FagL$decimalLatitude < 42.000001,  ] 
BraL42 <- BraL[BraL$decimalLatitude > 40.000000 & BraL$decimalLatitude < 42.000001,  ]
DL42 <- DL[DL$decimalLatitude > 40.000000 & DL$decimalLatitude < 42.000001,  ]
ApiL42 <- ApiL[ApiL$decimalLatitude > 40.000000 & ApiL$decimalLatitude < 42.000001,  ]
SolL42 <- SolL[SolL$decimalLatitude > 40.000000 & SolL$decimalLatitude < 42.000001,  ]
SaxL42 <- SaxL[SaxL$decimalLatitude > 40.000000 & SaxL$decimalLatitude < 42.000001,  ]
BorL42 <- BorL[BorL$decimalLatitude > 40.000000 & BorL$decimalLatitude < 42.000001,  ]
MyrL42 <- MyrL[MyrL$decimalLatitude > 40.000000 & MyrL$decimalLatitude < 42.000001,  ]
MalvL42 <- MalvL[MalvL$decimalLatitude > 40.000000 & MalvL$decimalLatitude < 42.000001,  ]
VL42 <- VL[VL$decimalLatitude > 40.000000 & VL$decimalLatitude < 42.000001,  ]
GerL42 <- GerL[GerL$decimalLatitude > 40.000000 & GerL$decimalLatitude < 42.000001,  ]
ZL42 <- ZL[ZL$decimalLatitude > 40.000000 & ZL$decimalLatitude < 42.000001,  ]
CorL42 <- CorL[CorL$decimalLatitude > 40.000000 & CorL$decimalLatitude < 42.000001,  ]
MagL42 <- MagL[MagL$decimalLatitude > 40.000000 & MagL$decimalLatitude < 42.000001,  ]
LauL42 <- LauL[LauL$decimalLatitude > 40.000000 & LauL$decimalLatitude < 42.000001,  ]
CelL42 <- CelL[CelL$decimalLatitude > 40.000000 & CelL$decimalLatitude < 42.000001,  ]
AquL42 <- AquL[AquL$decimalLatitude > 40.000000 & AquL$decimalLatitude < 42.000001,  ]
OL42 <- OL[OL$decimalLatitude > 40.000000 & OL$decimalLatitude < 42.000001,  ]
CucL42 <- CucL[CucL$decimalLatitude > 40.000000 & CucL$decimalLatitude < 42.000001,  ]
PipL42 <- PipL[PipL$decimalLatitude > 40.000000 & PipL$decimalLatitude < 42.000001,  ]
ProL42 <- ProL[ProL$decimalLatitude > 40.000000 & ProL$decimalLatitude < 42.000001,  ]
NL42 <- NL[NL$decimalLatitude > 40.000000 & NL$decimalLatitude < 42.000001,  ]
SanL42 <- SanL[SanL$decimalLatitude > 40.000000 & SanL$decimalLatitude < 42.000001,  ]
GarL42 <- GarL[GarL$decimalLatitude > 40.000000 & GarL$decimalLatitude < 42.000001,  ]
CroL42 <- CroL[CroL$decimalLatitude > 40.000000 & CroL$decimalLatitude < 42.000001,  ]
CerL42 <- CarL[CerL$decimalLatitude > 40.000000 & CerL$decimalLatitude < 42.000001,  ]

df42 <- rbind(AstL42, LamL42, CarL42, FabL42, RosL42, EriL42, GenL42, RanL42, SapL42, MalpL42, FagL42, BraL42, DL42, ApiL42, SolL42, SaxL42, BorL42, MyrL42, MalvL42, VL42, GerL42, ZL42, CorL42, MagL42, LauL42, CelL42, AquL42, OL42, CucL42, PipL42, ProL42, NL42, SanL42, GarL42, CroL42, CerL42)

AstL44 <- AstL[AstL$decimalLatitude > 42.000000 & AstL$decimalLatitude < 44.000001,  ] 
LamL44 <- LamL[LamL$decimalLatitude > 42.000000 & LamL$decimalLatitude < 44.000001,  ] 
CarL44 <- CarL[CarL$decimalLatitude > 42.000000 & CarL$decimalLatitude < 44.000001,  ]
FabL44 <- FabL[FabL$decimalLatitude > 42.000000 & FabL$decimalLatitude < 44.000001,  ]
RosL44 <- RosL[RosL$decimalLatitude > 42.000000 & RosL$decimalLatitude < 44.000001,  ] 
EriL44 <- EriL[EriL$decimalLatitude > 42.000000 & EriL$decimalLatitude < 44.000001,  ] 
RanL44 <- RanL[RanL$decimalLatitude > 42.000000 & RanL$decimalLatitude < 44.000001,  ] 
GenL44 <- GenL[GenL$decimalLatitude > 42.000000 & GenL$decimalLatitude < 44.000001,  ] 
SapL44 <- SapL[SapL$decimalLatitude > 42.000000 & SapL$decimalLatitude < 44.000001,  ] 
MalpL44 <- MalpL[MalpL$decimalLatitude > 42.000000 & MalpL$decimalLatitude < 44.000001,  ] 
FagL44 <- FagL[FagL$decimalLatitude > 42.000000 & FagL$decimalLatitude < 44.000001,  ] 
BraL44 <- BraL[BraL$decimalLatitude > 42.000000 & BraL$decimalLatitude < 44.000001,  ]
DL44 <- DL[DL$decimalLatitude > 42.000000 & DL$decimalLatitude < 44.000001,  ]
ApiL44 <- ApiL[ApiL$decimalLatitude > 42.000000 & ApiL$decimalLatitude < 44.000001,  ]
SolL44 <- SolL[SolL$decimalLatitude > 42.000000 & SolL$decimalLatitude < 44.000001,  ]
SaxL44 <- SaxL[SaxL$decimalLatitude > 42.000000 & SaxL$decimalLatitude < 44.000001,  ]
BorL44 <- BorL[BorL$decimalLatitude > 42.000000 & BorL$decimalLatitude < 44.000001,  ]
MyrL44 <- MyrL[MyrL$decimalLatitude > 42.000000 & MyrL$decimalLatitude < 44.000001,  ]
MalvL44 <- MalvL[MalvL$decimalLatitude > 42.000000 & MalvL$decimalLatitude < 44.000001,  ]
VL44 <- VL[VL$decimalLatitude > 42.000000 & VL$decimalLatitude < 44.000001,  ]
GerL44 <- GerL[GerL$decimalLatitude > 42.000000 & GerL$decimalLatitude < 44.000001,  ]
ZL44 <- ZL[ZL$decimalLatitude > 42.000000 & ZL$decimalLatitude < 44.000001,  ]
CorL44 <- CorL[CorL$decimalLatitude > 42.000000 & CorL$decimalLatitude < 44.000001,  ]
MagL44 <- MagL[MagL$decimalLatitude > 42.000000 & MagL$decimalLatitude < 44.000001,  ]
LauL44 <- LauL[LauL$decimalLatitude > 42.000000 & LauL$decimalLatitude < 44.000001,  ]
CelL44 <- CelL[CelL$decimalLatitude > 42.000000 & CelL$decimalLatitude < 44.000001,  ]
AquL44 <- AquL[AquL$decimalLatitude > 42.000000 & AquL$decimalLatitude < 44.000001,  ]
OL44 <- OL[OL$decimalLatitude > 42.000000 & OL$decimalLatitude < 44.000001,  ]
CucL44 <- CucL[CucL$decimalLatitude > 42.000000 & CucL$decimalLatitude < 44.000001,  ]
PipL44 <- PipL[PipL$decimalLatitude > 42.000000 & PipL$decimalLatitude < 44.000001,  ]
ProL44 <- ProL[ProL$decimalLatitude > 42.000000 & ProL$decimalLatitude < 44.000001,  ]
NL44 <- NL[NL$decimalLatitude > 42.000000 & NL$decimalLatitude < 44.000001,  ]
SanL44 <- SanL[SanL$decimalLatitude > 42.000000 & SanL$decimalLatitude < 44.000001,  ]
GarL44 <- GarL[GarL$decimalLatitude > 42.000000 & GarL$decimalLatitude < 44.000001,  ]
CroL44 <- CroL[CroL$decimalLatitude > 42.000000 & CroL$decimalLatitude < 44.000001,  ]
CerL44 <- CarL[CerL$decimalLatitude > 42.000000 & CerL$decimalLatitude < 44.000001,  ]

df44 <- rbind(AstL44, LamL44, CarL44, FabL44, RosL44, EriL44, GenL44, RanL44, SapL44, MalpL44, FagL44, BraL44, DL44, ApiL44, SolL44, SaxL44, BorL44, MyrL44, MalvL44, VL44, GerL44, ZL44, CorL44, MagL44, LauL44, CelL44, AquL44, OL44, CucL44, PipL44, ProL44, NL44, SanL44, GarL44, CroL44, CerL44)

AstL46 <- AstL[AstL$decimalLatitude > 44.000000 & AstL$decimalLatitude < 46.000001,  ] 
LamL46 <- LamL[LamL$decimalLatitude > 44.000000 & LamL$decimalLatitude < 46.000001,  ] 
CarL46 <- CarL[CarL$decimalLatitude > 44.000000 & CarL$decimalLatitude < 46.000001,  ]
FabL46 <- FabL[FabL$decimalLatitude > 44.000000 & FabL$decimalLatitude < 46.000001,  ]
RosL46 <- RosL[RosL$decimalLatitude > 44.000000 & RosL$decimalLatitude < 46.000001,  ] 
EriL46 <- EriL[EriL$decimalLatitude > 44.000000 & EriL$decimalLatitude < 46.000001,  ] 
RanL46 <- RanL[RanL$decimalLatitude > 44.000000 & RanL$decimalLatitude < 46.000001,  ] 
GenL46 <- GenL[GenL$decimalLatitude > 44.000000 & GenL$decimalLatitude < 46.000001,  ] 
SapL46 <- SapL[SapL$decimalLatitude > 44.000000 & SapL$decimalLatitude < 46.000001,  ] 
MalpL46 <- MalpL[MalpL$decimalLatitude > 44.000000 & MalpL$decimalLatitude < 46.000001,  ] 
FagL46 <- FagL[FagL$decimalLatitude > 44.000000 & FagL$decimalLatitude < 46.000001,  ] 
BraL46 <- BraL[BraL$decimalLatitude > 44.000000 & BraL$decimalLatitude < 46.000001,  ]
DL46 <- DL[DL$decimalLatitude > 44.000000 & DL$decimalLatitude < 46.000001,  ]
ApiL46 <- ApiL[ApiL$decimalLatitude > 44.000000 & ApiL$decimalLatitude < 46.000001,  ]
SolL46 <- SolL[SolL$decimalLatitude > 44.000000 & SolL$decimalLatitude < 46.000001,  ]
SaxL46 <- SaxL[SaxL$decimalLatitude > 44.000000 & SaxL$decimalLatitude < 46.000001,  ]
BorL46 <- BorL[BorL$decimalLatitude > 44.000000 & BorL$decimalLatitude < 46.000001,  ]
MyrL46 <- MyrL[MyrL$decimalLatitude > 44.000000 & MyrL$decimalLatitude < 46.000001,  ]
MalvL46 <- MalvL[MalvL$decimalLatitude > 44.000000 & MalvL$decimalLatitude < 46.000001,  ]
VL46 <- VL[VL$decimalLatitude > 44.000000 & VL$decimalLatitude < 46.000001,  ]
GerL46 <- GerL[GerL$decimalLatitude > 44.000000 & GerL$decimalLatitude < 46.000001,  ]
ZL46 <- ZL[ZL$decimalLatitude > 44.000000 & ZL$decimalLatitude < 46.000001,  ]
CorL46 <- CorL[CorL$decimalLatitude > 44.000000 & CorL$decimalLatitude < 46.000001,  ]
MagL46 <- MagL[MagL$decimalLatitude > 44.000000 & MagL$decimalLatitude < 46.000001,  ]
LauL46 <- LauL[LauL$decimalLatitude > 44.000000 & LauL$decimalLatitude < 46.000001,  ]
CelL46 <- CelL[CelL$decimalLatitude > 44.000000 & CelL$decimalLatitude < 46.000001,  ]
AquL46 <- AquL[AquL$decimalLatitude > 44.000000 & AquL$decimalLatitude < 46.000001,  ]
OL46 <- OL[OL$decimalLatitude > 44.000000 & OL$decimalLatitude < 46.000001,  ]
CucL46 <- CucL[CucL$decimalLatitude > 44.000000 & CucL$decimalLatitude < 46.000001,  ]
PipL46 <- PipL[PipL$decimalLatitude > 44.000000 & PipL$decimalLatitude < 46.000001,  ]
ProL46 <- ProL[ProL$decimalLatitude > 44.000000 & ProL$decimalLatitude < 46.000001,  ]
NL46 <- NL[NL$decimalLatitude > 44.000000 & NL$decimalLatitude < 46.000001,  ]
SanL46 <- SanL[SanL$decimalLatitude > 44.000000 & SanL$decimalLatitude < 46.000001,  ]
GarL46 <- GarL[GarL$decimalLatitude > 44.000000 & GarL$decimalLatitude < 46.000001,  ]
CroL46 <- CroL[CroL$decimalLatitude > 44.000000 & CroL$decimalLatitude < 46.000001,  ]
CerL46 <- CarL[CerL$decimalLatitude > 44.000000 & CerL$decimalLatitude < 46.000001,  ]

df46 <- rbind(AstL46, LamL46, CarL46, FabL46, RosL46, EriL46, GenL46, RanL46, SapL46, MalpL46, FagL46, BraL46, DL46, ApiL46, SolL46, SaxL46, BorL46, MyrL46, MalvL46, VL46, GerL46, ZL46, CorL46, MagL46, LauL46, CelL46, AquL46, OL46, CucL46, PipL46, ProL46, NL46, SanL46, GarL46, CroL46, CerL46)

AstL48 <- AstL[AstL$decimalLatitude > 46.000000 & AstL$decimalLatitude < 48.000001,  ] 
LamL48 <- LamL[LamL$decimalLatitude > 46.000000 & LamL$decimalLatitude < 48.000001,  ] 
CarL48 <- CarL[CarL$decimalLatitude > 46.000000 & CarL$decimalLatitude < 48.000001,  ]
FabL48 <- FabL[FabL$decimalLatitude > 46.000000 & FabL$decimalLatitude < 48.000001,  ]
RosL48 <- RosL[RosL$decimalLatitude > 46.000000 & RosL$decimalLatitude < 48.000001,  ] 
EriL48 <- EriL[EriL$decimalLatitude > 46.000000 & EriL$decimalLatitude < 48.000001,  ] 
RanL48 <- RanL[RanL$decimalLatitude > 46.000000 & RanL$decimalLatitude < 48.000001,  ] 
GenL48 <- GenL[GenL$decimalLatitude > 46.000000 & GenL$decimalLatitude < 48.000001,  ] 
SapL48 <- SapL[SapL$decimalLatitude > 46.000000 & SapL$decimalLatitude < 48.000001,  ] 
MalpL48 <- MalpL[MalpL$decimalLatitude > 46.000000 & MalpL$decimalLatitude < 48.000001,  ] 
FagL48 <- FagL[FagL$decimalLatitude > 46.000000 & FagL$decimalLatitude < 48.000001,  ] 
BraL48 <- BraL[BraL$decimalLatitude > 46.000000 & BraL$decimalLatitude < 48.000001,  ]
DL48 <- DL[DL$decimalLatitude > 46.000000 & DL$decimalLatitude < 48.000001,  ]
ApiL48 <- ApiL[ApiL$decimalLatitude > 46.000000 & ApiL$decimalLatitude < 48.000001,  ]
SolL48 <- SolL[SolL$decimalLatitude > 46.000000 & SolL$decimalLatitude < 48.000001,  ]
SaxL48 <- SaxL[SaxL$decimalLatitude > 46.000000 & SaxL$decimalLatitude < 48.000001,  ]
BorL48 <- BorL[BorL$decimalLatitude > 46.000000 & BorL$decimalLatitude < 48.000001,  ]
MyrL48 <- MyrL[MyrL$decimalLatitude > 46.000000 & MyrL$decimalLatitude < 48.000001,  ]
MalvL48 <- MalvL[MalvL$decimalLatitude > 46.000000 & MalvL$decimalLatitude < 48.000001,  ]
VL48 <- VL[VL$decimalLatitude > 46.000000 & VL$decimalLatitude < 48.000001,  ]
GerL48 <- GerL[GerL$decimalLatitude > 46.000000 & GerL$decimalLatitude < 48.000001,  ]
ZL48 <- ZL[ZL$decimalLatitude > 46.000000 & ZL$decimalLatitude < 48.000001,  ]
CorL48 <- CorL[CorL$decimalLatitude > 46.000000 & CorL$decimalLatitude < 48.000001,  ]
MagL48 <- MagL[MagL$decimalLatitude > 46.000000 & MagL$decimalLatitude < 48.000001,  ]
LauL48 <- LauL[LauL$decimalLatitude > 46.000000 & LauL$decimalLatitude < 48.000001,  ]
CelL48 <- CelL[CelL$decimalLatitude > 46.000000 & CelL$decimalLatitude < 48.000001,  ]
AquL48 <- AquL[AquL$decimalLatitude > 46.000000 & AquL$decimalLatitude < 48.000001,  ]
OL48 <- OL[OL$decimalLatitude > 46.000000 & OL$decimalLatitude < 48.000001,  ]
CucL48 <- CucL[CucL$decimalLatitude > 46.000000 & CucL$decimalLatitude < 48.000001,  ]
PipL48 <- PipL[PipL$decimalLatitude > 46.000000 & PipL$decimalLatitude < 48.000001,  ]
ProL48 <- ProL[ProL$decimalLatitude > 46.000000 & ProL$decimalLatitude < 48.000001,  ]
NL48 <- NL[NL$decimalLatitude > 46.000000 & NL$decimalLatitude < 48.000001,  ]
SanL48 <- SanL[SanL$decimalLatitude > 46.000000 & SanL$decimalLatitude < 48.000001,  ]
GarL48 <- GarL[GarL$decimalLatitude > 46.000000 & GarL$decimalLatitude < 48.000001,  ]
CroL48 <- CroL[CroL$decimalLatitude > 46.000000 & CroL$decimalLatitude < 48.000001,  ]
CerL48 <- CarL[CerL$decimalLatitude > 46.000000 & CerL$decimalLatitude < 48.000001,  ]

df48 <- rbind(AstL48, LamL48, CarL48, FabL48, RosL48, EriL48, GenL48, RanL48, SapL48, MalpL48, FagL48, BraL48, DL48, ApiL48, SolL48, SaxL48, BorL48, MyrL48, MalvL48, VL48, GerL48, ZL48, CorL48, MagL48, LauL48, CelL48, AquL48, OL48, CucL48, PipL48, ProL48, NL48, SanL48, GarL48, CroL48, CerL48)


## Functions ##

jfam <- function(x, y) { 
  return (n_distinct(intersect(x$family, y$family))/ 
            n_distinct(union(x$family, y$family))) 
}

jgen <- function(x, y) { 
  return (n_distinct(intersect(x$genus, y$genus))/ 
            n_distinct(union(x$genus, y$genus))) 
}

jspec <- function(x, y) { 
  return (n_distinct(intersect(x$species, y$species))/ 
             n_distinct(union(x$species, y$species))) 
  }

create_dflat2 <- function(a, b, c, d, e, f, g, h, i) {
  return(dflat2 <- data.frame(w = c(log10(jfam(a, b)), log10(jfam(b, c)), log10(jfam(c, d)), log10(jfam(d, e)), log10(jfam(e, f)), log10(jfam(f, g)), log10(jfam(g, h)), log10(jfam(h, i))),
                           x = c(log10(jgen(a, b)), log10(jgen(b, c)), log10(jgen(c, d)), log10(jgen(d, e)), log10(jgen(e, f)), log10(jgen(f, g)), log10(jgen(g, h)), log10(jgen(h, i))), 
                           y = c(log10(jspec(a, b)), log10(jspec(b, c)), log10(jspec(c, d)), log10(jspec(d, e)), log10(jspec(e, f)), log10(jspec(f, g)), log10(jspec(g, h)), log10(jspec(h, i))),
                           z = c(34, 36, 38, 40, 42, 44, 46, 48)))
}
dflat2 <- create_dflat2(df32, df34, df36, df38, df40, df42, df44, df46, df48)
 
write.csv(dflat2, "C:\\Users\\andre\\Documents\\R\\R\\32\\dflat2.csv" )

graph_gen <- ggplot(dflat2, aes(x=z, y=x)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  annotate("text",x=36.5,y=-0.05,label=(paste0("y=0.002529636x-0.234527874"))) +
  xlab("Comparison of diversity across n degrees latitude") + 
  ylab("ln of variation of genera between localities") +
  ylim(-0.3, -0.05) +
  ggtitle("Variation in Genera in North America Accross on a Latitudinal Gradient")

graph_gen
ggsave("C:\\Users\\andre\\Documents\\R\\R\\32\\Genus.jpg", graph_gen)

graph_spec <- ggplot(dflat2, aes(x=z, y=y)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  annotate("text",x=36.5,y=-0.05,label=(paste0("y=0.004624983x-0.418402136"))) +
  xlab("Comparison of diversity across n degrees latitude") + 
  ylab("ln of variation of species between localities") +
  ylim(-0.3, -0.05) +
  ggtitle("Variation in Species in North America Accross on a Latitudinal Gradient")
graph_spec

ggsave("C:\\Users\\andre\\Documents\\R\\R\\32\\Species.jpg", graph_spec)

graph_fam <- ggplot(dflat2, aes(x=z, y=w)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  annotate("text",x=36.5,y=0,label=(paste0("y=-0.000649038x-0.037930638"))) +
  xlab("Comparison of diversity across n degrees latitude") + 
  ylab("ln of variation of families between localities") +
  ylim(-0.2, -0) +
  ggtitle("Variation in Families in North America Accross on a Latitudinal Gradient")

graph_fam
ggsave("C:\\Users\\andre\\Documents\\R\\R\\32\\Families.jpg", graph_fam)

graph_fam + graph_gen + graph_spec
