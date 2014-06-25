{-# LANGUAGE NoMonomorphismRestriction, FlexibleContexts  #-}
module Main where


import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
import Diagrams.Backend.SVG
import Graphics.SVG.ReadPath
import Control.Monad.State
import Data.Monoid (mappend, mempty)
import Diagrams.Coordinates
import Diagrams.Query
import Data.List.Split
import Data.List 
import Data.String.Utils
import Data.Colour
import Data.Colour.SRGB
import Data.Colour.RGBSpace
import qualified Data.Map as Map
import Data.Maybe
import Data.Colour.SRGB.Linear
import Diagrams.TwoD.Text
import Control.Monad.Zip
import Control.Applicative
import Text.Blaze
import Text.CSV
import Text.Parsec.Error
import Data.Either
import System.IO
import System.Directory  
import Data.List
import System.Environment
import System.FilePath.Posix
import Graphics.SVGFonts
import Control.Lens (set)
--import Filesystem.Path

--blop :: IO [(String,Double)]
main = do 
   csvFilePath:xs <- getArgs
   let replacedPath = replaceColon csvFilePath  
       justTitle = dropExtension $ takeFileName replacedPath
   doIt1 justTitle . eliminateTheEither . fmap (drop 1) =<< parseCSVFromFile replacedPath


-- d x = renderSVG "/Users/nadinekhattak/Desktop/statesUS.svg" (Dims 500 500) x

d x = do
    csvFilePath:xs <- getArgs
    let replacedPath = replaceColon csvFilePath
    renderSVG (replaceExtension replacedPath "svg")(Dims 800 800) x

replaceColon x = replace "Macintosh HD" "" $ replace ":" "/" x 
    
    
doIt1 title xs = d $ mconcat
            [
             (alej (alcolor (aldata2 $ toPairs xs)))
             , (akfigure (akcolor (akdata2 $ toPairs xs)))
             , (azfigure (azcolor (azdata2 $ toPairs xs)))
             , (arfigure (arcolor (ardata2 $ toPairs xs)))
             , (cafigure (cacolor (cadata2 $ toPairs xs)))
             , (ca1figure (cacolor (cadata2 $ toPairs xs)))
             , (ca2figure (cacolor (cadata2 $ toPairs xs)))
             , (ca3figure (cacolor (cadata2 $ toPairs xs)))
             , (ca4figure (cacolor (cadata2 $ toPairs xs)))
             , (cofigure (cocolor (codata2 $ toPairs xs)))
             , (ctfigure (ctcolor (ctdata2 $ toPairs xs)))
             , (defigure (decolor (dedata2 $ toPairs xs)))
             , (dcfigure (dccolor (dcdata2 $ toPairs xs)))
             , (flfigure (flcolor (fldata2 $ toPairs xs)))
             , (gafigure (gacolor (gadata2 $ toPairs xs)))
             , (hifigure (hicolor (hidata2 $ toPairs xs)))
             , (idfigure (idcolor (iddata2 $ toPairs xs)))
             , (ilfigure (ilcolor (ildata2 $ toPairs xs)))
             , (indfigure (incolor (indata2 $ toPairs xs)))
             , (iafigure (iacolor (iadata2 $ toPairs xs)))
             , (ksfigure (kscolor (ksdata2 $ toPairs xs)))
             , (kyfigure (kycolor (kydata2 $ toPairs xs)))
             , (lafigure (lacolor (ladata2 $ toPairs xs)))
             , (mefigure (mecolor (medata2 $ toPairs xs)))
             , (mefigure1 (mecolor (medata2 $ toPairs xs)))
             , (mefigure2 (mecolor (medata2 $ toPairs xs)))
             , (mdfigure (mdcolor (mddata2 $ toPairs xs)))
             , (mdfigure1 (mdcolor (mddata2 $ toPairs xs)))
             , (mafigure (macolor (madata2 $ toPairs xs)))
             , (mafigure1 (macolor (madata2 $ toPairs xs)))             
             , (mafigure2 (macolor (madata2 $ toPairs xs)))   
             , (mifigure (micolor (midata2 $ toPairs xs)))  
             , (mifigure1 (micolor (midata2 $ toPairs xs)))               
             , (mifigure2 (micolor (midata2 $ toPairs xs)))                            
             , (mifigure3 (micolor (midata2 $ toPairs xs)))                            
             , (mnfigure (mncolor (mndata2 $ toPairs xs)))        
             , (mofigure (mocolor (modata2 $ toPairs xs)))   
             , (mtfigure (mtcolor (mtdata2 $ toPairs xs))) 
             , (msfigure (mscolor (msdata2 $ toPairs xs)))                        
             , (nefigure (necolor (nedata2 $ toPairs xs)))   
             , (nvfigure (nvcolor (nvdata2 $ toPairs xs)))     
             , (nhfigure (nhcolor (nhdata2 $ toPairs xs)))          
             , (njfigure (njcolor (njdata2 $ toPairs xs)))    
             , (nmfigure (nmcolor (nmdata2 $ toPairs xs)))      
             , (nyfigure (nycolor (nydata2 $ toPairs xs)))  
             , (ncfigure (nccolor (ncdata2 $ toPairs xs)))                  
             , (ncfigure1 (nccolor (ncdata2 $ toPairs xs)))    
             , (ndfigure (ndcolor (nddata2 $ toPairs xs)))        
             , (ohfigure (ohcolor (ohdata2 $ toPairs xs)))        
             , (okfigure (okcolor (okdata2 $ toPairs xs)))                                                       
             , (oregonfigure (orcolor (ordata2 $ toPairs xs)))    
             , (penfigure (pacolor (padata2 $ toPairs xs)))    
             , (rifigure (ricolor (ridata2 $ toPairs xs)))             
             , (scfigure (sccolor (scdata2 $ toPairs xs)))        
             , (sdfigure (sdcolor (sddata2 $ toPairs xs)))     
             , (tnfigure (tncolor (tndata2 $ toPairs xs)))         
             , (txfigure (txcolor (txdata2 $ toPairs xs)))                                                        
             , (txfigure1 (txcolor (txdata2 $ toPairs xs)))     
             , (utfigure (utcolor (utdata2 $ toPairs xs)))                
             , (vtfigure (vtcolor (vtdata2 $ toPairs xs)))  
             , (vafigure (vacolor (vadata2 $ toPairs xs)))                                  
             , (vafigure1 (vacolor (vadata2 $ toPairs xs)))                                               
             , (wafigure (wacolor (wadata2 $ toPairs xs)))                                                                                
             , (wafigure1 (wacolor (wadata2 $ toPairs xs)))          
             , (wvfigure (wvcolor (wvdata2 $ toPairs xs)))    
             , (wifigure (wicolor (widata2 $ toPairs xs)))     
             , (wyfigure (wycolor (wydata2 $ toPairs xs)))       
             , headerstuff title
            ]


--eliminateTheEither :: Either ParseError CSV -> CSV
eliminateTheEither parsedCSV = case parsedCSV of
                    Left err -> error $ show err
                    Right xs -> xs

toTuple :: [a] -> Maybe (a,a)
toTuple xs = case xs of
        []  -> Nothing
        [x] -> Nothing
        x:y:_ -> Just (x,y)

toPairs :: [[a]] -> [(a,a)]
toPairs = mapMaybe toTuple

readSnd ::(s, String) -> (s,Double)
readSnd (x,y) = (x, read y)



-- aldata2 :: [([Char], a)] -> a
aldata2 pairs = 0.013* (read (fromJust $ lookup "Alabama" pairs))
akdata2 pairs = 0.013* (read (fromJust $ lookup "Alaska" pairs))
azdata2 pairs = 0.013* (read (fromJust $ lookup "Arizona" pairs))
ardata2 pairs = 0.013* (read (fromJust $ lookup "Arkansas" pairs))
cadata2 pairs = 0.013* (read (fromJust $ lookup "California" pairs))
codata2 pairs = 0.013* (read (fromJust $ lookup  "Colorado" pairs))
ctdata2 pairs = 0.013* (read (fromJust $ lookup  "Connecticut" pairs))
dedata2 pairs = 0.013* (read (fromJust $ lookup  "Delaware" pairs))
dcdata2 pairs = 0.013* (read (fromJust $ lookup  "District of Columbia" pairs))
fldata2 pairs = 0.013* (read (fromJust $ lookup  "Florida" pairs))
gadata2 pairs = 0.013* (read (fromJust $ lookup  "Georgia" pairs))
hidata2 pairs = 0.013* (read (fromJust $ lookup  "Hawaii" pairs))
iddata2 pairs = 0.013* (read (fromJust $ lookup  "Idaho" pairs))
ildata2 pairs = 0.013* (read (fromJust $ lookup  "Illinois" pairs))
indata2 pairs = 0.013* (read (fromJust $ lookup  "Indiana" pairs))
iadata2 pairs = 0.013* (read (fromJust $ lookup  "Iowa" pairs))
ksdata2 pairs = 0.013* (read (fromJust $ lookup  "Kansas" pairs))
kydata2 pairs = 0.013* (read (fromJust $ lookup  "Kentucky" pairs))
ladata2 pairs = 0.013* (read (fromJust $ lookup  "Louisiana" pairs))
medata2 pairs = 0.013* (read (fromJust $ lookup  "Maine" pairs))
mddata2 pairs = 0.013* (read (fromJust $ lookup  "Maryland" pairs))
madata2 pairs = 0.013* (read (fromJust $ lookup  "Massachusetts" pairs))
midata2 pairs = 0.013* (read (fromJust $ lookup  "Michigan" pairs))
mndata2 pairs = 0.013* (read (fromJust $ lookup  "Minnesota" pairs))
msdata2 pairs = 0.013* (read (fromJust $ lookup  "Mississippi" pairs))
modata2 pairs = 0.013* (read (fromJust $ lookup  "Missouri" pairs))
mtdata2 pairs = 0.013* (read (fromJust $ lookup  "Montana" pairs))
nedata2 pairs = 0.013* (read (fromJust $ lookup  "Nebraska" pairs))
nvdata2 pairs = 0.013* (read (fromJust $ lookup  "Nevada" pairs))
nhdata2 pairs = 0.013* (read (fromJust $ lookup  "New Hampshire" pairs))
njdata2 pairs = 0.013* (read (fromJust $ lookup  "New Jersey" pairs))
nmdata2 pairs = 0.013* (read (fromJust $ lookup  "New Mexico" pairs))
nydata2 pairs = 0.013* (read (fromJust $ lookup  "New York" pairs))
ncdata2 pairs = 0.013* (read (fromJust $ lookup  "North Carolina" pairs))
nddata2 pairs = 0.013* (read (fromJust $ lookup  "North Dakota" pairs))
ohdata2 pairs = 0.013* (read (fromJust $ lookup  "Ohio" pairs))
okdata2 pairs = 0.013* (read (fromJust $ lookup  "Oklahoma" pairs))
ordata2 pairs = 0.013* (read (fromJust $ lookup  "Oregon" pairs))
padata2 pairs = 0.013* (read (fromJust $ lookup  "Pennsylvania" pairs))
ridata2 pairs = 0.013* (read (fromJust $ lookup  "Rhode Island" pairs))
scdata2 pairs = 0.013* (read (fromJust $ lookup  "South Carolina" pairs))
sddata2 pairs = 0.013* (read (fromJust $ lookup  "South Dakota" pairs))
tndata2 pairs = 0.013* (read (fromJust $ lookup  "Tennessee" pairs))
txdata2 pairs = 0.013* (read (fromJust $ lookup  "Texas" pairs))
utdata2 pairs = 0.013* (read (fromJust $ lookup  "Utah" pairs))
vtdata2 pairs = 0.013* (read (fromJust $ lookup  "Vermont" pairs))
vadata2 pairs = 0.013* (read (fromJust $ lookup  "Virginia" pairs))
wadata2 pairs = 0.013* (read (fromJust $ lookup  "Washington" pairs))
wvdata2 pairs = 0.013* (read (fromJust $ lookup  "West Virginia" pairs))
widata2 pairs = 0.013* (read (fromJust $ lookup  "Wisconsin" pairs))
wydata2 pairs = 0.013* (read (fromJust $ lookup  "Wyoming" pairs))


alcolor :: (Floating a, Ord a) => a -> Colour a
alcolor x = blend x red yellow
akcolor x = blend x red yellow
azcolor x = blend x red yellow
arcolor x = blend x red yellow
cacolor x = blend x red yellow
cocolor x = blend x red yellow
ctcolor x = blend x red yellow
decolor x = blend x red yellow
dccolor x = blend x red yellow
flcolor x = blend x red yellow
gacolor x = blend x red yellow
hicolor x = blend x red yellow
idcolor x = blend x red yellow
ilcolor x = blend x red yellow
incolor x = blend x red yellow
iacolor x = blend x red yellow
kscolor x = blend x red yellow
kycolor x = blend x red yellow
lacolor x = blend x red yellow
mecolor x = blend x red yellow
mdcolor x = blend x red yellow
macolor x = blend x red yellow
micolor x = blend x red yellow
mncolor x = blend x red yellow
mscolor x = blend x red yellow
mocolor x = blend x red yellow
mtcolor x = blend x red yellow
necolor x = blend x red yellow
nvcolor x = blend x red yellow
nhcolor x = blend x red yellow
njcolor x = blend x red yellow
nmcolor x = blend x red yellow
nycolor x = blend x red yellow
nccolor x = blend x red yellow
ndcolor x = blend x red yellow
ohcolor x = blend x red yellow
okcolor x = blend x red yellow
orcolor x = blend x red yellow
pacolor x = blend x red yellow
ricolor x = blend x red yellow
sccolor x = blend x red yellow
sdcolor x = blend x red yellow
tncolor x = blend x red yellow
txcolor x = blend x red yellow
utcolor x = blend x red yellow
vtcolor x = blend x red yellow
vacolor x = blend x red yellow
wacolor x = blend x red yellow
wvcolor x = blend x red yellow
wicolor x = blend x red yellow
wycolor x = blend x red yellow

-- alcolmonad :: [(String, Double)] -> Colour Double
--alcolmonad = alcolor . aldata2

example x = circle 1 # fc x
example1 x = square 5 # fc x

-- ejpts = fromOffsets . map r2 $[(4.90324,-86.32496), (-113.38856,-12.64396), (-12.21382,87.93916), (120.69914,11.02976)]

-- example x = ejpts #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (380.03242 ^& (-320.96457))

al = fromOffsets . map r2 $[  (-1.4906,-14.3215), (-2.74824,-18.75264), (0.16166,-14.06449), (0.8083,-31.03885), (-0.16166,-16.65106), (0.16509,-6.41906), (44.48448,-3.61945), (-0.1478,2.18242), (0.16166,2.1016), (0.64665,3.39487), (3.39488,7.92137), (2.4249,9.86131), (1.45495,6.14311), (1.6166,4.84982), (1.45496,6.95141), (2.10158,6.30476), (2.58657,3.39489), (0.48498,3.39486), (1.93994,0.80831), (0.16166,2.10159), (-1.77828,4.84982), (-0.48498,3.23322), (-0.16166,1.93992), (1.61662,4.36485), (0.32332,5.33479), (-0.80832,2.42492), (0.64666,0.8083), (1.45494,0.8083), (0.32814,2.88882), (-5.59766,-0.35355), (-6.78975,0.64665), (-25.5424,2.90988), (-10.41156,1.40677), (-0.22138,2.8774), (1.77827,1.77827), (2.58657,1.93992), (0.58086,7.93544), (-5.54206,2.5729), (-2.74822,-0.32332), (2.74822,-1.93993), (0.0,-0.96996), (-3.07154,-5.98144), (-2.26325,-0.64664), (-1.45495,4.36483), (-1.29328,2.74823), (-0.64664,-0.16166), (-2.74823,0.0)]

alej :: Renderable (Path R2) b => Colour Double -> Diagram b R2
alej x = al #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (631.30646  ^& (-460.4157))


x2 = r2 (-1.29328,-0.96997)
[c1,c2] = map r2 [(0,0), (-0.8083,-0.32332)]

bezierSegment :: Segment Closed R2
bezierSegment = bezier3 c1 c2 x2

x3 = r2 ((-2.1016),(-3.39488))
[c3,c4] = map r2 [((-0.485),(-0.64664)), ((-2.1016),(-3.39488))]

bezierSegment1 :: Segment Closed R2
bezierSegment1 = bezier3 c3 c4 x3

lineListOfPoints :: [R2]
lineListOfPoints =  map r2 $ [(-0.32332,85.35713), (1.6166,0.96996), (3.07157,0.16166), (1.45494,-1.13162), (2.58658,0.0), (0.16167,2.9099), (6.95143,6.78977), (0.48499,2.58658), (3.39488,-1.93994), (0.64665,-0.16166), (0.32332,-3.07156), (1.45494,-1.61661), (1.13164,-0.16166), (1.93993,-1.45496), (3.07156,2.1016), (0.64665,2.90991), (1.93993,1.13162), (1.13163,2.42492), (3.87988,1.77827), (3.39488,5.98147), (2.74823,3.87986), (2.26326,2.74825), (1.45496,3.7182), (5.01149,1.77828), (5.17317,2.10159), (0.96996,4.36486), (0.48498,3.07156), (-0.96996,3.39489), (-1.77828,2.26325), (-1.61661,-0.8083), (-1.45495,-3.07157), (-2.74824,-1.45494), (-1.77827,-1.13164), (-0.80831,0.80831), (1.45495,2.74825), (0.16166,3.7182), (-1.13163,0.48498), (-1.93993,-1.93993), (-2.10159,-1.29329), (0.48498,1.61661), (1.29328,1.77828), (-0.8083,0.8083)]

lineTrail :: Trail R2
lineTrail = fromOffsets lineListOfPoints

lineSegs :: [Segment Closed R2]
lineSegs = trailSegments lineTrail

lineListOfPoints1 :: [R2]
lineListOfPoints1 =  map r2 $ [(-0.96997,-2.26326)]

lineTrail1 :: Trail R2
lineTrail1 = fromOffsets lineListOfPoints1

lineSegs1 :: [Segment Closed R2]
lineSegs1 = trailSegments lineTrail1


x4 = r2 ((-0.96997),0.96996)
[c5,c6] = map r2 [(0,0), ((-0.32332), 1.29329)]

bezierSegment2 :: Segment Closed R2
bezierSegment2 = bezier3 c5 c6 x4


x5 = r2 ((-1.29329),(-1.45494))
[c7,c8] = map r2 [((-0.64665),(-0.32332)), ((-1.29329),(-1.45494))]

bezierSegment3 :: Segment Closed R2
bezierSegment3 = bezier3 c7 c8 x5

lineListOfPoints2 :: [R2]
lineListOfPoints2 =  map r2 $ [(1.77827,-1.93994), (-1.45495,-1.45495), (0.0,-5.0115), (-0.8083,0.0), (-0.8083,3.39488), (-1.13164,0.485), (-0.96996,-3.71822), (-0.64665,-3.71821), (-0.80831,-0.48498), (0.32333,5.65815), (0.0,1.13162), (-1.45496,-1.29328), (-3.55654,-5.98147), (-2.1016,-0.48498), (-0.64664,-3.71821), (-1.61661,-2.9099), (-1.61662,-1.13164), (0.0,-2.26325), (2.1016,-1.29329), (-0.48498,-0.32332), (-2.58658,0.64664), (-3.39489,-2.42491), (-2.58658,-2.90991), (-4.84983,-2.58658), (-4.04154,-2.58658), (1.2933,-3.23322), (0.0,-1.61661), (-1.77828,1.61661), (-2.9099,1.13163), (-3.71821,-1.13163), (-5.65815,-2.42491), (-5.49647,0.0), (-0.64664,0.48498), (-6.46645,-3.87988), (-2.1016,-0.32332), (-2.74824,-5.8198), (-3.55655,0.32332), (-3.55655,1.45495), (0.48499,4.52652), (1.13162,-2.9099), (0.96998,0.32332), (-1.45496,4.36485), (3.23322,-2.74824), (0.64665,1.61661), (-3.87987,4.36485), (-1.29329,-0.32332), (-0.48498,-1.93994), (-1.29329,-0.8083), (-1.29329,1.13163), (-2.74824,-1.77827), (-3.07157,2.1016), (-1.77826,2.10159), (-3.39489,2.1016), (-4.68818,-0.16167), (-0.48498,-2.10159), (3.7182,-0.64665), (0.0,-1.29328), (-2.26326,-0.64666), (0.96998,-2.42491), (2.26325,-3.87987), (0.0,-1.77827), (0.16166,-0.80831), (4.36486,-2.26326), (0.96996,1.29329), (2.74825,0.0), (-1.29329,-2.58657), (-3.71822,-0.32333), (-5.01149,2.74824), (-2.42492,3.39488), (-1.77827,2.58659), (-1.13163,2.26326), (-4.20319,1.45494), (-3.07157,2.58658), (-0.323321,1.61662), (2.263257,0.96997), (0.808313,2.10158), (-2.748249,3.23323), (-6.466439,4.2032), (-7.759747,4.20319), (-2.101597,1.13162), (-5.334818,1.13164), (-5.334826,2.26325), (1.778275,1.29329), (-1.454954,1.45495), (-0.484982,1.13163), (-2.748238,-0.96997), (-3.23322,0.16166), (-0.808312,2.26326), (-0.969963,0.0), (0.323321,-2.42492), (-3.556551,1.2933), (-2.909899,0.96996), (-3.394886,-1.29329), (-2.909901,1.93993), (-3.233224,0.0), (-2.101597,1.2933), (-1.616612,0.8083), (-2.101595,-0.32332), (-2.58658,-1.13163), (-2.263257,0.64665), (-0.969967,0.96996), (-1.616613,-1.13162), (0.0,-1.93994), (3.071564,-1.29329), (6.304787,0.64665), (4.364853,-1.61662), (2.101596,-2.10159), (2.909902,-0.64665), (1.778273,-0.80831), (2.748241,0.16166), (1.616612,1.2933), (0.969963,-0.32332), (2.263257,-2.74824), (3.07157,-0.96998), (3.39488,-0.64664), (1.293294,-0.32332), (0.646642,0.48498), (0.808312,0.0), (1.293284,-3.71821), (4.041533,-1.45494), (1.939936,-3.71821), (2.263259,-4.52652), (1.616615,-1.45495), (0.323321,-2.58658), (-1.616615,1.29329), (-3.394893,0.64665), (-0.646642,-2.42492), (-1.293284,-0.32332), (-0.969973,0.96996), (-0.16166,2.90991), (-1.454955,-0.16167), (-1.454944,-5.8198), (-1.293294,1.29328), (-1.131624,-0.48498), (-0.32332,-1.93993), (-4.041533,0.16166), (-2.101596,1.13163), (-2.586578,-0.32332), (1.454944,-1.45495), (0.484981,-2.58658), (-0.646641,-1.93994), (1.454954,-0.96996), (1.293284,-0.16166), (-0.646642,-1.77828), (0.0,-4.36485), (-0.969963,-0.96997), (-0.808312,1.45495), (-6.143123,0.0), (-1.454951,-1.29329), (-0.646645,-3.87986), (-2.101596,-3.55656), (0.0,-0.96996), (2.101596,-0.80831), (0.161661,-2.1016), (1.131628,-1.13162), (-0.808305,-0.48498), (-1.29329,0.48498), (-1.131628,-2.74824), (0.969967,-5.01151), (4.526514,-3.23321), (2.586575,-1.61662), (1.939936,-3.7182), (2.748249,-1.2933), (2.586578,1.13164), (0.323321,2.42492), (2.424917,-0.32334), (3.23322,-2.42491), (1.616615,0.64665), (0.969962,0.64664), (1.616615,0.0), (2.263259,-1.29329), (0.808313,-4.36486)]

lineTrail2 :: Trail R2
lineTrail2 = fromOffsets lineListOfPoints2

lineSegs2 :: [Segment Closed R2]
lineSegs2 = trailSegments lineTrail2

x6 = r2 (0.969963,(-3.39488))
[c9,c10] = map r2 [(0,0), (0.323321,(-2.90989))]

bezierSegment4 :: Segment Closed R2
bezierSegment4 = bezier3 c9 c10 x6

x7 = r2 (0.969963,(-0.96996))
[c11,c12] = map r2 [(0.646642,(-0.48498)), (0.969963,(-0.96996))]

bezierSegment5 :: Segment Closed R2
bezierSegment5 = bezier3 c11 c12 x7

lineListOfPoints3:: [R2]
lineListOfPoints3 =  map r2 $ [ (-1.131623,-1.93994), (-2.58658,0.80831), (-3.23323,0.8083), (-1.939936,-0.48498), (-3.556541,-1.77828), (-5.011495,-0.16166), (-3.556551,-3.7182), (0.484981,-3.87987), (0.646652,-2.42492), (-2.101596,-1.77827), (-1.939938,-3.71822), (0.484983,-0.8083), (6.789771,-0.48498), (2.101596,0.0), (0.969963,0.96996), (0.646652,0.0), (-0.16166,-1.61661), (3.879862,-0.64664), (2.586577,0.32332), (1.454955,1.13163), (-1.454955,2.1016), (-0.484981,1.45494), (2.748249,1.61662), (5.011497,1.77827), (1.778276,-0.96996), (-2.263257,-4.36485), (-0.969974,-3.23323), (0.969974,-0.80831), (-3.394891,-1.93993), (-0.484983,-1.13164), (0.484983,-1.6166), (-0.808304,-3.87987), (-2.909909,-4.68818), (-2.424918,-4.20319), (2.909909,-1.93994), (3.233222,0.0), (1.778276,0.64665), (4.203192,-0.16166), (3.718205,-3.55654), (1.131633,-3.07157), (3.718212,-2.42492), (1.616604,0.96997), (2.748239,-0.64665), (3.718209,-2.1016), (1.13164,-0.16166), (0.96996,0.80832), (4.52651,-0.16167), (2.74824,-3.07156), (1.13163,0.0), (3.55655,2.42491), (1.93993,2.1016), (-0.48498,1.13163), (0.64664,1.13163), (1.61662,-1.61661), (3.87987,0.32332), (0.32332,3.7182), (1.93994,1.45496), (7.11309,0.64664), (6.30479,4.20319), (1.45494,-0.96996), (5.17317,2.58658), (2.10159,-0.64664), (1.93994,-0.80832), (4.84983,1.93994), (4.36486,2.9099)]

lineTrail3 :: Trail R2
lineTrail3 = fromOffsets lineListOfPoints3

lineSegs3 :: [Segment Closed R2]
lineSegs3 = trailSegments lineTrail3

combinedSegs :: [Segment Closed R2]
combinedSegs = lineSegs ++ [bezierSegment, bezierSegment1] ++ lineSegs1 ++ [bezierSegment2, bezierSegment3] ++ lineSegs2 ++ [bezierSegment4, bezierSegment5] ++ lineSegs3

combinedLine :: Trail' Line R2
combinedLine = lineFromSegments combinedSegs

gluedLine :: Trail' Loop R2
gluedLine = glueLine combinedLine

strokedLine :: Renderable (Path R2) b => Diagram b R2
strokedLine = strokeLoop gluedLine

--alej :: Renderable (Path R2) b => Colour Double -> Diagram b R2
--akfigure :: Renderable (Path R2) b => Diagram b R2
akfigure x = strokedLine #scaleY (-1) #fc x #lc white  #lw 0.5 #translate (158.0767 ^& (-453.67502)) 


az = fromOffsets . map r2 $[(-2.62701,2.15833), (-0.32332,1.45495), (0.48498,0.96996), (18.91427,10.66959), (12.12454,7.59804), (14.7111,8.56801), (16.81269,10.02295), (12.2862,2.42491), (24.95116,2.70491), (17.25561,-119.12707), (-83.73563,-11.91725), (-3.09239,16.41246), (-1.60629,0.0153), (-1.71467,2.62916), (-2.51485,-0.11432), (-1.25742,-2.74347), (-2.74347,-0.34293), (-0.9145,-1.14311), (-0.91448,0.0), (-0.9145,0.57156), (-1.94329,1.0288), (-0.1143,6.97298), (-0.22864,1.71467), (-0.57154,12.57424), (-1.48605,2.17191), (-0.57156,3.31503), (2.74347,4.91539), (1.25742,5.82988), (0.80019,1.0288), (1.0288,0.57156), (-0.11432,2.28622), (-1.60035,1.37173), (-3.42934,1.71467), (-1.94329,1.9433), (-1.48605,3.65795), (-0.57156,4.91539), (-2.85778,2.74347), (-2.0576,0.68587), (0.13569,0.82988), (-0.45725,1.71467), (0.45725,0.80018), (3.65796,0.57154), (-0.57156,2.74348), (-1.48605,2.17191), (-3.77227,0.91449)]

azfigure x = az #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (144.9112 ^& (-382.6291))

ar = fromOffsets . map r2 $[ (-3.97988,0.7167), (-5.11215,-0.63403), (0.4207,-1.60207), (2.97975,-2.56669), (0.94338,-3.65625), (-1.82898,-2.9721), (-78.41757,2.51485), (1.60036,6.85869), (-0.00001,8.23042), (1.37175,10.97399), (0.22862,37.83693), (2.28623,1.94329), (2.97209,-1.37173), (2.74348,1.14311), (0.68034,6.5733), (55.62126,-1.1406), (1.14563,-2.09037), (-0.28662,-3.54951), (-1.82563,-2.9721), (1.59869,-1.48521), (-1.59869,-2.5115), (0.6842,-2.50983), (1.36839,-5.60543), (2.51819,-2.06263), (-0.68587,-2.28456), (3.65797,-5.37179), (2.74347,-1.36839), (-0.11348,-1.49358), (-0.34544,-1.82564), (2.85695,-5.59873), (2.40304,-1.25659), (0.38413,-3.42763), (1.77067,-1.2417), (-3.14352,-0.48427), (-1.34146,-4.01044), (2.80408,-2.37671), (0.55026,-2.0192), (1.27948,-4.04661), (1.06619,-3.25539)]

arfigure x = ar #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (593.82477 ^& (-343.05295))


ca = fromOffsets . map r2 $[(3.94008,-0.48862), (1.48604,-2.01144), (0.54454,-2.94109), (-3.55152,-0.59012), (-0.51417,-0.66822), (0.4775,-2.03231), (-0.15928,-0.58967), (1.92257,-0.61959), (3.04278,-2.83268), (0.58156,-4.9951), (1.3799,-3.40211), (1.94329,-2.16626), (3.51887,-1.58967), (1.65439,-1.60483), (0.0687,-2.10884), (-0.99333,-0.58001), (-1.02315,-1.07273), (-1.15522,-5.84845), (-2.6852,-4.83009), (0.56581,-3.505), (-2.41958,-1.02931), (-69.061325,-104.1784), (18.902111,-67.60149), (-67.079865,-15.69796), (-1.506896,4.73324), (-0.161661,7.43638), (-5.173135,11.80121), (-3.071548,2.58657), (-0.323321,1.13162), (-1.778266,0.80831), (-1.454944,4.20317), (-0.808302,3.23321), (2.748228,4.20317), (1.616605,4.20317), (1.131623,3.55653), (-0.323321,6.46642), (-1.778265,3.07155), (-0.646642,5.81978), (-0.969963,3.71819), (1.778265,3.87985), (2.748228,4.52649), (2.263247,4.84982), (1.293283,4.04151), (-0.32332,3.23321), (-0.323321,0.48498), (0.0,2.10158), (5.658116,6.30476), (-0.484981,2.42491), (-0.646642,2.26325), (-0.646642,1.93992), (0.16166,8.24469), (2.101586,3.71819), (1.939926,2.58656), (2.748228,0.48499), (0.969963,2.74822), (-1.131623,3.55653), (-2.101587,1.61661), (-1.131623,0.0), (-0.808302,3.87985), (0.484981,2.90989), (3.23321,4.36483), (1.616604,5.3348), (1.454944,4.68815), (1.293284,3.07155), (3.39487,5.81978), (1.454944,2.58656), (0.484982,2.90989), (1.616604,0.96996), (0.0,2.42491), (-0.808302,1.93993), (-1.778265,7.11306), (-0.484982,1.93992), (2.424908,2.74823), (4.203172,0.48498), (4.526493,1.77827), (3.879851,2.10158), (2.909889,0.0), (2.909888,3.07155), (2.586567,4.84982), (1.131624,2.26324), (3.879851,2.10159), (4.849814,0.8083), (1.454944,2.10159), (0.646642,3.23321), (-1.454944,0.64664), (0.323321,0.96996), (3.233211,0.8083), (2.748228,0.16167), (3.159889,-1.68685), (3.879854,4.20317), (0.808302,2.26325), (2.586572,4.20317), (0.32332,3.23321), (0.0,9.37631), (0.48498,1.77826), (10.02295,1.45495), (19.72257,2.74822), (13.84504,1.3497)]

cafigure x = ca #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (144.69443 ^& (-382.19812))

ca1 = fromOffsets . map r2 $[ (1.293288,1.53578), (-0.16166,1.29329), (-3.233221,-0.0808), (-0.565814,-1.21246), (-0.646644,-1.45495), (3.314051,-0.0808)]

ca1figure x = ca1 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (56.55921400000001 ^& (-338.48145))

ca2 = fromOffsets . map r2 $[ (1.939932,0.0), (1.212458,-0.64664), (3.556543,2.10159), (3.07156,1.21245), (-0.889136,0.64666), (-4.526509,-0.2425), (-1.61661,-1.61661), (-0.808306,-1.45495)]

ca2figure x = ca2 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (58.49914600000001 ^& (-338.48145))

ca3 = fromOffsets . map r2 $[ (1.778265,2.34408), (0.808313,0.96997), (1.535779,0.56581), (0.565807,-1.45495), (-0.969963,-1.77827), (-2.667403,-2.02076), (-1.050798,0.16166), (0.0,1.21246)]

ca3figure x = ca3 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (79.19176000000002 ^& (-358.28493))

caPoints :: [R2]
caPoints = map r2 $[ (-1.454955,8.64886), (1.778276,3.15239), (1.212458,1.93994), (-1.454954,0.24248), (-1.293284,-1.21245)]

caTrail :: Trail R2
caTrail = fromOffsets caPoints

caLineSegs :: [Segment Closed R2]
caLineSegs = trailSegments caTrail

cax2 = r2 (-0.727477,-1.85911)
[cac1, cac2] = map r2 [(0,0),(-0.727477,-1.45495)]

cabezierSegment :: Segment Closed R2
cabezierSegment  = bezier3 cac1 cac2 cax2

cax3 = r2 (0,-2.18242)
[cac3, cac4] = map r2 [(0,-0.40414),(0,-2.18242)]

cabezierSegment1 :: Segment Closed R2
cabezierSegment1  = bezier3 cac3 cac4 cax3

ca1Points :: [R2]
ca1Points = map r2 $[(0.484981,-0.0808)]

ca1Trail :: Trail R2
ca1Trail = fromOffsets ca1Points

ca1LineSegs :: [Segment Closed R2]
ca1LineSegs = trailSegments ca1Trail

caCombSegs :: [Segment Closed R2]
caCombSegs = caLineSegs ++ [cabezierSegment, cabezierSegment1] ++ ca1LineSegs

caCombLine :: Trail' Line R2
caCombLine = lineFromSegments caCombSegs

cagluedLine :: Trail' Loop R2
cagluedLine = glueLine caCombLine

caStrokedLine :: Renderable (Path R2) b => Diagram b R2
caStrokedLine = strokeLoop cagluedLine

ca4figure x = caStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate (77.73680500000002 ^& (-366.93379))

co = fromOffsets . map r2 $[(4.90324,-86.32496), (-113.38856,-12.64396), (-12.21382,87.93916), (120.69914,11.02976)]

cofigure x = co #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (380.03242 ^& (-320.96457))

ct = fromOffsets . map r2 $[(-3.67743,-14.87881), (-4.71882,0.92031), (-21.22878,4.74309), (1.00019,3.22567), (1.45495,7.27474), (0.17678,8.96692), (-1.22002,2.17487), (1.92079,1.93234), (4.27153,-3.90564), (3.55653,-3.23321), (1.93992,-2.10159), (0.80831,0.64664), (2.74822,-1.45494), (5.17314,-1.13162), (7.79469,-3.17877)]

ctfigure x = ct #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (874.0683 ^&  (-178.86288))

de = fromOffsets . map r2 $ [(0.36831,-2.14689), (0.37507,-1.69105), (-1.623,0.39776), (-1.61546,0.46756), (-2.20626,1.7643), (1.72012,5.04288), (2.26326,5.65812), (2.10158,9.69965), (1.61662,6.30478), (5.01148,-0.16166), (6.14212,-1.18068), (-2.26423,-7.38627), (-0.96997,0.48498), (-3.55653,-2.4249), (-1.77826,-4.68816), (-1.93993,-3.55653), (-3.14712,-2.87031), (-0.86416,-2.09812), (0.36636,-1.61546)]

defigure x = de #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (825.6261 ^& (-228.2791))

dc = fromOffsets . map r2 $[ (-1.85828,-1.82417), (-1.23263,-0.68629), (1.44301,-2.02247), (2.88909,1.9485), (-1.24119,2.58443)]

dcfigure x = dc #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (805.81946 ^& (-250.84384))

fl1 = fromOffsets . map r2 $[ (2.26566,7.3186), (3.7297,9.74226), (5.33479,9.3763), (3.71819,6.30476), (4.84982,5.49646), (4.04151,3.71819), (1.6166,2.90989), (-1.13162,1.29328), (-0.8083,1.29328), (2.90988,7.43639), (2.90989,2.90988), (2.58657,5.3348), (3.55653,5.81978), (4.52649,8.24468), (1.29329,7.59804), (0.48498,11.96288), (0.64664,1.77826), (-0.32332,3.39487), (-2.42491,1.29329), (0.32332,1.93992), (-0.64664,1.93993), (0.32332,2.4249), (0.48498,1.93993), (-2.74822,3.23321), (-3.07155,1.45494), (-3.87985,0.16166), (-1.45495,1.61661), (-2.4249,0.96996), (-1.29329,-0.48498), (-1.13162,-0.96996), (-0.32332,-2.90989), (-0.80831,-3.39487), (-3.39487,-5.17314), (-3.55653,-2.26324), (-3.87985,-0.32332), (-0.8083,1.29328), (-3.07155,-4.36483), (-0.64664,-3.55653), (-2.58657,-4.04151), (-1.77826,-1.13163), (-1.61661,2.10159), (-1.77826,-0.32332), (-2.10159,-5.01148), (-2.90989,-3.87985), (-2.90989,-5.33479), (-2.58656,-3.07155), (-3.55653,-3.71819), (2.10158,-2.42491), (3.23321,-5.49646), (-0.16166,-1.6166), (-4.52649,-0.96996), (-1.61661,0.64664), (0.32333,0.64664), (2.58656,0.96996), (-1.45494,4.5265), (-0.8083,0.48498), (-1.77827,-4.04151), (-1.29328,-4.84982), (-0.32332,-2.74823), (1.45494,-4.68815), (0.0,-9.53797), (-3.07155,-3.71819), (-1.29328,-3.07155), (-5.17314,-1.29328), (-1.93992,-0.64664), (-1.61661,-2.58657), (-3.39487,-1.61661), (-1.13162,-3.39487), (-2.74823,-0.96996), (-2.42491,-3.71819), (-4.20317,-1.45494), (-2.90989,-1.45495), (-2.58656,0.0), (-4.04152,0.80831), (-0.16166,1.93992), (0.80831,0.96996), (-0.48499,1.13163), (-3.07154,-0.16166), (-3.71819,3.55653), (-3.55654,1.93992), (-3.87985,0.0), (-3.23321,1.29329), (-0.32332,-2.74823), (-1.6166,-1.93993), (-2.90989,-1.13162), (-1.6166,-1.45495), (-8.08303,-3.87985), (-7.59804,-1.77826), (-4.36483,0.64664), (-5.98144,0.48498), (-5.98144,2.10159), (-3.47924,0.61296), (-0.23792,-8.04975), (-2.58657,-1.93992), (-1.77827,-1.77827), (0.32332,-3.07156), (10.18462,-1.29328), (25.5424,-2.90989), (6.78975,-0.64664), (5.436,0.28027), (2.58657,3.87986), (1.45494,1.45494), (8.09816,0.51522), (10.81975,-0.64664), (21.51239,-1.29329), (5.44572,-0.67437), (5.10758,0.20451), (0.42683,2.90989), (2.233,0.8083), (0.23494,-4.63), (-1.52822,-4.17295), (1.3084,-1.43983), (5.55463,0.45475), (5.17314,0.32332)]


fl2 = fromOffsets . map r2 $ [(2.42492,-0.64664), (1.29328,-0.24249), (1.45496,-2.34409), (2.34408,-1.61661), (1.29329,0.48499), (1.69744,0.32332), (0.40415,1.05079), (-3.4757,1.21246), (-4.2032,1.45495), (-2.34408,1.21246), (-0.88914,-0.88914)]


fl3 = fromOffsets . map r2 $ [(1.21246,1.0508), (2.74824,-2.10159), (5.33481,-4.20319), (3.7182,-3.87987), (2.50575,-6.6281), (0.96997,-1.69744), (0.16166,-3.39488), (-0.72748,0.48498), (-0.96996,2.82907), (-1.45496,4.60733), (-3.23322,5.254), (-4.36484,4.20318), (-3.39488,1.93993), (-2.50575,1.53578)]

flfigure x = mconcat 
         [ fl1 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.01 #translate (759.8167 ^& (-439.1428))
         , fl2 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.01 #translate (772.3621099999999  ^& (-571.5478800000001))
         , fl3 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.01 #translate (785.8608099999999 ^& (-566.5363900000001))
        ]

ga = fromOffsets . map r2 $[ (0.0,2.18242), (0.16166,2.1016), (0.64664,3.39487), (3.39488,7.92137), (2.42491,9.86131), (1.45494,6.14311), (1.61661,4.84981), (1.45495,6.95141), (2.10159,6.30477), (2.58657,3.39488), (0.48498,3.39487), (1.93993,0.8083), (0.16166,2.1016), (-1.77827,4.84981), (-0.48498,3.23322), (-0.16166,1.93993), (1.61661,4.36484), (0.32332,5.3348), (-0.80831,2.42491), (0.64665,0.80831), (1.45495,0.8083), (0.2047,3.21809), (2.23301,3.34953), (2.25044,2.16205), (7.92138,0.16166), (10.81975,-0.64664), (21.51239,-1.29328), (5.44572,-0.67437), (4.57725,0.0277), (0.16166,2.90989), (2.58657,0.8083), (0.32332,-4.36484), (-1.61661,-4.5265), (1.13163,-1.6166), (5.81978,0.8083), (4.97741,0.31778), (-0.77542,-6.29879), (2.26324,-10.02295), (1.45495,-4.20318), (-0.48499,-2.58656), (3.33441,-6.2443), (-0.5103,-1.35168), (-1.91341,0.70458), (-2.58656,-1.2933), (-0.64665,-2.10159), (-1.29328,-3.55653), (-2.26326,-2.10159), (-2.58656,-0.64664), (-1.61661,-4.84982), (-2.92501,-6.335), (-4.20317,-1.93993), (-2.1016,-1.93993), (-1.29329,-2.58657), (-2.10158,-1.93993), (-2.26325,-1.29329), (-2.26325,-2.90989), (-3.07155,-2.26324), (-4.52651,-1.77828), (-0.48498,-1.45494), (-2.42491,-2.90989), (-0.48498,-1.45495), (-3.39488,-4.97048), (-3.51987,0.0992), (-3.75491,-2.35614), (-1.41828,-1.29328), (-0.32332,-1.77827), (0.8708,-1.93992), (2.22664,-1.11014), (-0.63394,-2.09722), (-41.86975,4.98893)]

gafigure x = ga #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (672.2923 ^& (-355.5518))

hi1 = fromOffsets . map r2 $ [(1.93993,-3.55655), (2.26326,-0.32332), (0.32332,0.8083), (-2.1016,3.07157), (-2.42491,0.0)]

hi2 = fromOffsets . map r2 $ [(6.14313,2.58657), (2.10159,-0.32332), (1.61661,-3.87987), (-0.64664,-3.39488), (-4.2032,-0.48498), (-4.04153,1.77827), (-0.96996,3.71821)]

hi3 = fromOffsets . map r2 $ [(3.7182,5.49647), (2.42492,-0.32332), (1.13163,-0.48498), (1.45495,1.29329), (3.71821,-0.16166), (0.96997,-1.45495), (-2.90991,-1.77827), (-1.93993,-3.71822), (-2.1016,-3.55654), (-5.8198,2.9099), (-0.64664,1.77828)]

hi4 = fromOffsets . map r2 $ [(1.29329,-1.93994), (4.68817,0.96996), (0.64665,-0.48498), (6.14312,0.64664), (-0.32332,1.2933), (-2.58658,1.45494), (-4.36485,-0.32332), (-5.49648,-1.6166)]


hi5 = fromOffsets . map r2 $ [(1.93994,3.87987), (3.07155,-1.13163), (0.32333,-1.61662), (-1.61661,-2.10159), (-3.71821,-0.32332), (0.0,1.29329)]

hi6 = fromOffsets . map r2 $ [(2.26326,-2.9099), (4.68817,2.42492), (4.36485,1.13163), (4.36486,2.74824), (0.0,1.93993), (-3.55654,1.77828), (-4.84985,0.96996), (-2.42491,-1.45495), (-4.84984,-6.62811)]


hi7 = fromOffsets . map r2 $ [(1.61661,-1.29328), (3.39489,1.61662), (7.59807,3.55654), (3.39489,2.10159), (1.6166,2.42492), (1.93994,4.36485), (4.04153,2.58658), (-0.32332,1.2933), (-3.87987,3.23322), (-4.20319,1.45495), (-1.45495,-0.64664), (-3.07157,1.77826), (-2.42491,3.23323), (-2.26326,2.9099), (-1.77828,-0.16166), (-3.55654,-2.58658), (-0.32332,-4.52651), (0.64664,-2.42492), (-1.61661,-5.65814), (-2.1016,-1.77828), (-0.16166,-2.58658), (2.26326,-0.96996), (2.1016,-3.07156), (0.48498,-0.96997), (-1.61661,-1.77828), (-0.32332,-2.1016)]

hifigure x = mconcat
         [ hi1 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (233.08751 ^& (-519.3095))
         , hi2 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (243.27217000000002 ^& (-515.59129))
         , hi3 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (273.9878 ^& (-525.61429))  
        , hi4 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (294.19545 ^& (-534.50566))
        , hi5 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (299.53027 ^& (-539.67881))
        , hi6 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (306.4817 ^& (-538.54718))
        , hi7 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (323.13281 ^& (-554.06665))
        ]
        
idPoints :: [R2]
idPoints = map r2 $[ (8.77087,-35.22072), (1.37174,-4.22952), (2.51484,-5.94418), (-1.25742,-2.28623), (-2.51486,0.11431), (-0.80017,-1.0288), (0.45725,-1.14311), (0.34292,-3.08641), (4.45815,-5.48695), (1.82898,-0.45724), (1.14311,-1.14311), (0.57156,-3.20072), (0.91448,-0.68586), (3.88659,-5.82988), (3.88659,-4.34383), (0.22862,-3.772268), (-3.42934,-2.629163), (-1.53555,-4.400983), (13.62491,-63.34169), (13.51759,2.528111), (-4.40808,21.383013), (3.56035,7.485352), (-1.58111,4.66084), (1.96985,4.641233), (3.13822,1.255191), (3.83534,9.556588), (3.51269,4.437154), (0.50725,1.143118), (3.34095,1.143118), (0.36885,2.097075), (-6.97101,17.376093), (-0.16518,2.56593), (2.63112,3.3217), (0.90508,0.0489), (4.91129,-3.0256), (0.67742,-1.09497), (1.56231,0.65886), (-0.27844,5.35372), (2.73925,12.58271), (3.91783,3.17791), (1.68118,2.16545), (-0.71661,4.08386), (1.06622,2.80741), (1.06163,1.09128), (2.47929,-2.35142), (2.84816,0.0489), (2.91925,1.3352), (2.78002,-0.68193), (3.79426,-0.16048), (3.9789,1.60036), (2.74348,-0.29676), (0.49674,-3.03731), (2.93259,-0.76483), (1.26017,1.51591), (0.44093,2.94496), (1.42434,1.21321), (-8.386,53.60866)]

idTrail :: Trail R2
idTrail = fromOffsets idPoints       

idLineSegs :: [Segment Closed R2]
idLineSegs = trailSegments idTrail

idx2 = r2 (-94.95939,-18.20435)
[idc1, idc2] = map r2 [(0,0),(-87.96599,-16.70061)]

idbezierSegment :: Segment Closed R2
idbezierSegment  = bezier3 idc1 idc2 idx2

idCombSegs :: [Segment Closed R2]
idCombSegs = idLineSegs ++ [idbezierSegment] 

idCombLine :: Trail' Line R2
idCombLine = lineFromSegments idCombSegs

idgluedLine :: Trail' Loop R2
idgluedLine = glueLine idCombLine

idStrokedLine :: Renderable (Path R2) b => Diagram b R2
idStrokedLine = strokeLoop idgluedLine

--idfigure :: Renderable (Path R2) b => Diagram b R2
idfigure x = idStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate (148.4788 ^& (-176.48395))

il = fromOffsets . map r2 $ [ (0.0312,-3.22971), (0.56739,-4.64596), (2.33253,-2.91586), (1.86665,-4.07576), (2.23302,-3.99533), (-0.3715,-5.2524), (-2.00521,-3.54257), (-0.0964,-3.34668), (0.69483,-5.26951), (-0.82541,-7.17837), (-1.06634,-15.77745), (-1.29328,-15.01734), (-0.92228,-11.6392), (-0.27251,-0.92139), (-0.8083,-2.58657), (-1.29328,-3.71819), (-1.61661,-1.77827), (-1.45494,-2.58656), (-0.23357,-5.48896), (-45.79643,2.59825), (0.22862,2.37195), (2.28623,0.68587), (0.91448,1.14311), (0.45725,1.82898), (3.88658,3.42934), (0.68588,2.28623), (-0.68588,3.42934), (-1.82898,3.65796), (-0.68586,2.51484), (-2.28623,1.82899), (-1.82898,0.68587), (-5.25832,1.37173), (-0.68587,1.82898), (-0.68587,2.05761), (0.68587,1.37174), (1.82898,1.60036), (-0.22862,4.1152), (-1.82899,1.60036), (-0.68586,1.60036), (0.0,2.74347), (-1.82898,0.45724), (-1.60036,1.14312), (-0.22862,1.37174), (0.22862,2.0576), (-1.71467,1.31457), (-1.0288,2.80064), (0.45724,3.65795), (2.28623,7.31593), (7.31593,7.54455), (5.48693,3.65796), (-0.22862,4.34383), (0.9145,1.37174), (6.40143,0.45724), (2.74347,1.37174), (-0.68586,3.65796), (-2.28623,5.94419), (-0.68587,3.20072), (2.28622,3.88658), (6.40144,5.25832), (4.57246,0.68587), (2.05759,5.0297), (2.05761,3.20071), (-0.91449,2.97209), (1.60036,4.11521), (1.82898,2.05761), (1.41403,-0.88069), (0.90766,-2.07479), (2.21308,-1.7472), (2.13147,-0.6144), (2.60253,1.1798), (3.62699,1.3757), (1.18895,-0.29823), (0.19987,-2.25845), (-1.2873,-2.41179), (0.30422,-2.37672), (1.8384,-1.34745), (3.02254,-0.81029), (1.2609,-0.45852), (-0.61261,-1.38688), (-0.79137,-2.35437), (1.4326,-0.98096), (1.15747,-3.21403)]

ilfigure x = il #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (619.54145 ^& (-300.34244))

ind = fromOffsets . map r2 $ [ ( 0.0653,-2.85858), (0.48499,-4.52651), (2.26324,-2.90988), (1.77828,-3.87987), (2.58656,-4.20317), (-0.48498,-5.81979), (-1.77826,-2.74823), (-0.32332,-3.23321), (0.8083,-5.49647), (-0.48498,-6.95141), (-1.2933,-16.00441), (-1.29328,-15.35776), (-0.97047,-11.72002), (3.07106,0.88951), (1.45495,0.96996), (1.13162,-0.32332), (2.10159,-1.93992), (2.82957,-1.61699), (5.0928,-0.16204), (21.98587,-2.26326), (5.57573,-0.53316), (1.50314,15.95621), (4.25135,36.84155), (0.59846,5.7716), (-0.3715,2.26325), (1.22798,1.79537), (0.0964,1.37255), (-2.52129,1.59951), (-3.53943,1.55131), (-3.20213,0.55028), (-0.59846,4.86693), (-4.57469,3.31247), (-2.79642,4.01044), (0.32332,2.37673), (-0.58134,1.5342), (-3.32647,0.0), (-1.58553,-1.6166), (-2.49331,1.2622), (-2.68296,1.50314), (0.16167,3.05445), (-1.19379,0.25803), (-0.46788,-1.01814), (-2.16688,-1.50314), (-3.25032,1.34148), (-1.55131,3.00625), (-1.43784,-0.8083), (-1.45495,-1.59951), (-4.46434,0.48499), (-5.59283,0.96996), (-2.90989,1.55132)]

indfigure x = ind #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (619.5695 ^& (-299.9713))

ia = fromOffsets . map r2 $[  (0.26438,2.7862), (2.22372,0.57726), (0.95394,1.22533), (0.50001,1.85536), (3.79284,3.35865), (0.68587,2.3915), (-0.67434,3.42447), (-1.58231,3.23198), (-0.79934,2.74179), (-2.17275,1.60204), (-1.71551,0.5724), (-5.57902,1.8602), (-1.39146,3.84869), (0.72864,1.37174), (1.84051,1.68259), (-0.28293,4.03629), (-1.76315,1.53786), (-0.77141,1.64314), (0.12722,2.77632), (-1.88631,0.45724), (-1.62545,1.10491), (-0.27879,1.35263), (0.27879,2.11492), (-1.55102,1.11607), (-2.47053,-3.13328), (-1.26257,-2.44987), (-65.73582,2.51485), (-0.91803,0.16544), (-2.0524,-4.51596), (-0.22862,-6.63007), (-1.60036,-4.11521), (-0.68586,-5.25831), (-2.28623,-3.65797), (-0.91448,-4.80107), (-2.74348,-7.54455), (-1.14311,-5.37264), (-1.37174,-2.17191), (-1.60036,-2.74346), (1.95398,-4.84383), (1.37174,-5.71557), (-2.74347,-2.05761), (-0.45725,-2.74347), (0.9145,-2.51485), (1.71467,0.0), (82.654,-1.26948), (0.83426,4.18312), (2.25218,1.56097), (0.25671,1.42309), (-2.02954,3.38931), (0.19041,3.20552), (2.51486,3.7982), (2.52679,1.29362), (3.07928,0.50305), (0.65834,0.83236)]

iafigure x = ia #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (569.1915 ^& (-199.5843))

ks = fromOffsets . map r2 $ [ (-12.61826,0.20443), (-46.08909,-0.45723), (-44.55748,-2.05763), (-24.62974,-1.25741), (3.89379,-64.59497), (22.08346,0.67517), (40.28913,0.8414), (44.30124,0.98758), (5.09563,0.0), (2.1844,2.1624), (2.01766,-0.0214), (1.6403,1.01247), (-0.0625,3.00923), (-1.82898,1.72537), (-0.33225,2.23217), (1.84308,3.40233), (2.95236,3.19506), (2.32735,1.61446), (1.30077,11.24082), (0.18913,36.08573)]

ksfigure x = ks #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (507.88058 ^& (-324.38028))

kyPoints :: [R2]
kyPoints = map r2 $[ (-2.29332,2.40168), (-3.57819,3.99404), (-4.92455,5.46467), (-1.21577,1.71577), (-0.0625,2.10158), (-4.37986,2.16409), (-5.65812,3.39488), (-7.23187,1.79885), (-51.86789,4.89886), (-15.75956,1.77826), (-4.6212,0.51271), (-3.86835,-0.0277), (-0.22695,4.22028), (-8.17941,0.14456), (-6.95141,0.64664), (-7.98748,-0.0602), (1.20778,-1.32008), (2.49954,-1.54085), (0.22863,-3.20073), (0.91449,-1.82898), (-1.60682,-2.5389), (0.80183,-1.90681), (2.26326,-1.77826), (2.10158,-0.64665), (2.74823,1.29329), (3.55654,1.29328), (1.13163,-0.32332), (0.16166,-2.26325), (-1.29329,-2.42491), (0.32332,-2.26325), (1.93993,-1.45494), (2.58658,-0.64665), (1.6166,-0.64664), (-0.8083,-1.77827), (-0.64664,-1.93993), (1.50662,-0.9958)]

kyTrail :: Trail R2
kyTrail = fromOffsets kyPoints

kyLineSegs :: [Segment Closed R2]
kyLineSegs = trailSegments kyTrail

kyx2 = r2 (1.23829,-3.65781)
[kyc1, kyc2] = map r2 [(0.003,-0.0371),(1.25396,-3.52229)]

kybezierSegment :: Segment Closed R2
kybezierSegment  = bezier3 kyc1 kyc2 kyx2

kyPoints1 :: [R2]
kyPoints1 = map r2 $[ (3.05322,-1.47868), (5.31979,-0.96996), (4.49404,-0.48498), (1.39244,1.62743), (1.52827,0.8708), (1.59077,-3.10821), (3.18708,-1.28262), (2.20509,1.48403), (0.41056,0.99904), (1.17352,-0.26401), (-0.16167,-2.95293), (3.13087,-1.74919), (2.14809,-1.07348), (1.52936,1.66081), (3.31815,-0.0442), (0.58733,-1.57125), (-0.36751,-2.26324), (2.60053,-3.9985), (4.77655,-3.4379), (0.70595,-4.83586), (2.92502,-0.45591), (3.79146,-1.64568), (2.44332,-1.70824), (-0.19833,-1.56493), (-1.14245,-1.45494), (0.56582,-2.99491), (4.18485,-0.1175), (2.29991,-0.7458), (3.34739,1.4291), (2.05411,4.36484), (5.13229,0.0108), (2.05101,2.20819), (1.61545,-0.1477), (2.60169,-1.27817), (5.23706,0.57337), (2.57492,0.21751), (1.68758,-2.05624), (2.61795,-1.42588), (1.88178,-0.7071), (0.64664,2.83663), (2.04343,1.05834), (2.64276,2.08249), (0.11747,5.67324), (0.8083,1.57241), (2.58972,1.55628), (0.77164,2.29451), (4.15989,3.43694), (1.80531,3.62324), (2.45655,1.65852)]

kyTrail1 :: Trail R2
kyTrail1 = fromOffsets kyPoints1

kyLineSegs1 :: [Segment Closed R2]
kyLineSegs1 = trailSegments kyTrail1

kyCombSegs :: [Segment Closed R2]
kyCombSegs = kyLineSegs ++ [kybezierSegment] ++ kyLineSegs1

kyCombLine :: Trail' Line R2
kyCombLine = lineFromSegments kyCombSegs

kygluedLine :: Trail' Loop R2
kygluedLine = glueLine kyCombLine

kyStrokedLine :: Renderable (Path R2) b => Diagram b R2
kyStrokedLine = strokeLoop kygluedLine

--kyfigure :: Renderable (Path R2) b => Diagram b R2
kyfigure x = kyStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate  (725.9944 ^& (-295.2707))

laPoints :: [R2]
laPoints = map r2 $[ (-3.28461,-3.16614), (1.00991,-5.50023), (-0.66135,-0.89308), (-9.26167,1.00656), (-25.02832,0.45892), (-0.68419,-2.39468), (0.91281,-8.4557), (3.31588,-5.94585), (5.03136,-8.69102), (-0.57407,-2.39802), (1.25659,-0.68085), (0.45893,-1.95249), (-2.28624,-2.05593), (-0.11179,-1.94245), (-1.83066,-4.34551), (-0.14705,-6.3386), (-55.47379,0.92397), (0.0286,9.57357), (0.68587,9.37353), (0.68587,3.88658), (2.51485,4.11521), (0.91449,5.02971), (4.34383,5.48693), (0.22862,3.20072), (0.68587,0.68587), (-0.68587,8.45904), (-2.97209,5.02969), (1.60036,2.05761), (-0.68588,2.51484), (-0.68586,7.31593), (-1.37174,3.20071), (0.12246,3.61645), (4.68648,-1.52015), (12.11335,0.20701), (10.34627,3.55653), (6.46642,1.13163), (3.71819,-1.45495), (3.23321,1.13163), (3.23321,0.96996), (0.8083,-2.10159), (-3.23321,-1.13162), (-2.58657,0.48498), (-2.74823,-1.6166)]

laTrail :: Trail R2
laTrail = fromOffsets laPoints

laLineSegs :: [Segment Closed R2]
laLineSegs = trailSegments laTrail

lax2 = r2 (0.80831,-1.45495)
[lac1, lac2] = map r2 [(0,0),(0.16167,-1.29329)]

labezierSegment :: Segment Closed R2
labezierSegment  = bezier3 lac1 lac2 lax2

lax3 = r2 (3.07155,-0.96996)
[lac3, lac4] = map r2 $[(0.64664,-0.16166), (3.07155,-0.96996)]

labezierSegment1 :: Segment Closed R2
labezierSegment1 = bezier3 lac3 lac4 lax3

laPoints1 :: [R2]
laPoints1 = map r2 $[ (1.77826,1.45494), (1.77827,-0.96996), (3.23321,0.64664), (1.45494,2.42491), (0.32332,2.26325), (4.52649,0.32332), (1.77827,1.77826), (-0.8083,1.61661), (-1.29329,0.8083), (1.61661,1.6166), (8.40634,3.55653), (3.55653,-1.29328), (0.96997,-2.42491), (2.58656,-0.64664), (1.77827,-1.45494), (1.29328,0.96996), (0.8083,2.90989), (-2.26324,0.8083), (0.64664,0.64664), (3.39487,-1.29328), (2.26325,-3.39487), (0.8083,-0.48498), (-2.10159,-0.32332), (0.8083,-1.61661), (-0.16166,-1.45494), (2.10159,-0.48498), (1.13162,-1.29329), (0.64664,0.8083)]

laTrail1 :: Trail R2
laTrail1 = fromOffsets laPoints1

laLineSegs1 :: [Segment Closed R2]
laLineSegs1 = trailSegments laTrail1

lax4 = r2 (0.64665,3.07155)
[lac5, lac6] = map r2 [(0,0),(-0.16166,3.07155)]

labezierSegment2 :: Segment Closed R2
labezierSegment2  = bezier3 lac5 lac6 lax4

lax5 = r2 (4.20317,0.64665)
[lac7, lac8] = map r2 $[(0.8083,0), (4.20317,0.64665)]

labezierSegment3 :: Segment Closed R2
labezierSegment3 = bezier3 lac3 lac4 lax3

laPoints2 :: [R2]
laPoints2 = map r2 $[ (4.04151,1.93992), (0.96996,1.45495), (2.90989,0.0), (1.13163,0.96996), (2.26324,-3.07155), (0.0,-1.45495), (-1.29328,0.0), (-3.39487,-2.74822), (-5.81978,-0.80831), (-3.23321,-2.26324), (1.13163,-2.74823), (2.26324,0.32332), (0.16166,-0.64664), (-1.77826,-0.96996), (0.0,-0.48499), (3.23321,0.0), (1.77826,-3.07154), (-1.29328,-1.93993), (-0.32332,-2.74823), (-1.45495,0.16166), (-1.93992,2.10159), (-0.64664,2.58657), (-3.07155,-0.64665), (-0.96997,-1.77826), (1.77827,-1.93993), (1.90333,-3.4456), (-1.0611,-2.41227), (-1.16564,-3.98133)]

laTrail2 :: Trail R2
laTrail2 = fromOffsets laPoints2

laLineSegs2 :: [Segment Closed R2]
laLineSegs2 = trailSegments laTrail2

laCombSegs :: [Segment Closed R2]
laCombSegs = laLineSegs ++ [labezierSegment, labezierSegment1] ++ laLineSegs1 ++ [labezierSegment2, labezierSegment3] ++ laLineSegs2

laCombLine :: Trail' Line R2
laCombLine = lineFromSegments laCombSegs

lagluedLine :: Trail' Loop R2
lagluedLine = glueLine laCombLine

laStrokedLine :: Renderable (Path R2) b => Diagram b R2
laStrokedLine = strokeLoop lagluedLine

--lafigure :: Renderable (Path R2) b => Diagram b R2
lafigure x = laStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate (607.96704 ^& (-459.16125))


melineListOfPoints :: [R2]
melineListOfPoints =  map r2 $ [ (1.93993,2.101586), (2.26325,3.718191), (0.0,1.939926), (-2.10159,4.688153), (-1.93993,0.646642), (-3.39487,3.071549), (-4.84981,5.496454)]

melineTrail :: Trail R2
melineTrail = fromOffsets melineListOfPoints

melineSegs :: [Segment Closed R2]
melineSegs = trailSegments melineTrail

mex2 = r2 (-1.29328,0)
[mec1,mec2] = map r2 [(0,0), (-0.64664,0)]

mebezierSegment :: Segment Closed R2
mebezierSegment = bezier3 mec1 mec2 mex2

mex3 = r2 (-0.96997,-2.101584)
[mec3,mec4] = map r2 [(-0.64664,0), (-0.96997,-2.101584)]

mebezierSegment1 :: Segment Closed R2
mebezierSegment1 = bezier3 mec3 mec4 mex3

melineListOfPoints1 :: [R2]
melineListOfPoints1 =  map r2 $ [ (-1.77826,0.16166), (-0.96996,1.454944), (-2.42491,1.45495), (-0.96996,1.45494), (1.6166,1.45494), (-0.48498,0.64665), (-0.48498,2.74822), (-1.93993,-0.16166), (0.0,-1.6166), (-0.32332,-1.29329), (-1.45494,0.32333), (-1.77827,-3.23321), (-2.10158,1.29328), (1.29328,1.45494), (0.32332,1.13163), (-0.8083,1.29328), (0.32332,3.07155), (0.16166,1.6166), (-1.6166,2.58657), (-2.90989,0.48498), (-0.32332,2.90989), (-5.3348,3.07155), (-1.29328,0.48498), (-1.61661,-1.45494), (-3.07155,3.55653), (0.96997,3.23321), (-1.45495,1.29328), (-0.16166,4.36483), (-1.12328,6.25936), (-2.46225,-1.15595), (-0.48499,-3.07156), (-3.87985,-1.13163), (-0.32332,-2.74824), (-7.27475,-23.44082), (-4.69858,-14.639742), (1.42054,-0.118165), (1.51379,0.409899), (0.0,-2.586568), (1.3083,-4.496456), (2.58657,-4.688153), (1.45495,-4.041512), (-1.93993,-2.424907), (0.0,-5.981437), (0.8083,-0.969963), (0.80831,-2.748228), (-0.16166,-1.454944), (-0.16167,-4.849814), (1.77827,-4.849814), (2.90989,-8.891326), (2.10158,-4.203172), (1.29329,0.0), (1.29328,0.16166), (0.0,1.131623), (1.29329,2.263247), (2.74822,0.646642), (0.80831,-0.808303), (0.0,-0.969962), (4.04151,-2.909889), (1.77826,-1.778265), (1.45495,0.161661), (5.98143,2.424907), (1.93993,0.969962), (9.05299,29.907187), (5.98143,0.0), (0.80831,1.939926), (0.16166,4.849814), (2.90988,2.263246), (0.80831,0.0), (0.16166,-0.484981), (-0.48498,-1.131623), (2.74822,-0.161661)]

melineTrail1 :: Trail R2
melineTrail1 = fromOffsets melineListOfPoints1

melineSegs1 :: [Segment Closed R2]
melineSegs1 = trailSegments melineTrail1

mecombinedSegs :: [Segment Closed R2]
mecombinedSegs = melineSegs ++ [mebezierSegment, mebezierSegment1] ++ melineSegs1 

mecombinedLine :: Trail' Line R2
mecombinedLine = lineFromSegments mecombinedSegs

megluedLine :: Trail' Loop R2
megluedLine = glueLine mecombinedLine

mestrokedLine :: Renderable (Path R2) b => Diagram b R2
mestrokedLine = strokeLoop megluedLine

-- mefigure :: Renderable (Path R2) b => Diagram b R2
mefigure x = mestrokedLine #scaleY (-1) #fc x #lc white  #lw 0.5 #translate (922.8398 ^& (-78.83072))

me = fromOffsets . map r2 $ [ (1.53578,-1.53578), (1.37412,1.0508), (0.56581,2.42492), (-1.69744,0.88913), (-1.77827,-2.82907)]

mefigure1 x = me #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (901.90801 ^& (-108.978251))

me2lineListOfPoints :: [R2]
me2lineListOfPoints =  map r2 $ [ (1.77827,1.8591)]

me2lineTrail :: Trail R2
me2lineTrail = fromOffsets me2lineListOfPoints

me2lineSegs :: [Segment Closed R2]
me2lineSegs = trailSegments me2lineTrail

mex4 = r2 (1.29329,-0.2425)
[mec5,mec6] = map r2 [(0,0), (1.29329,0.0808)]

mebezierSegment2 :: Segment Closed R2
mebezierSegment2 = bezier3 mec5 mec6 mex4

mex5 = r2 (0.24249,-2.02076)
[mec7,mec8] = map r2 [(0,-0.32332), (0.24249,-2.02076)]

mebezierSegment3 :: Segment Closed R2
mebezierSegment3 = bezier3 mec7 mec8 mex5

me2lineListOfPoints1 :: [R2]
me2lineListOfPoints1 =  map r2 $ [ (0.88914,-0.8083), (-0.80831,-1.77828), (-2.02076,0.72748), (-1.37412,2.26326)]

me2lineTrail1 :: Trail R2
me2lineTrail1 = fromOffsets me2lineListOfPoints1

me2lineSegs1 :: [Segment Closed R2]
me2lineSegs1 = trailSegments me2lineTrail1

me2combinedSegs :: [Segment Closed R2]
me2combinedSegs = me2lineSegs ++ [mebezierSegment2, mebezierSegment3] ++ me2lineSegs1 

me2combinedLine :: Trail' Line R2
me2combinedLine = lineFromSegments me2combinedSegs

me2gluedLine :: Trail' Loop R2
me2gluedLine = glueLine me2combinedLine

me2strokedLine :: Renderable (Path R2) b => Diagram b R2
me2strokedLine = strokeLoop me2gluedLine

--mefigure2 :: Renderable (Path R2) b => Diagram b R2
mefigure2 x = me2strokedLine #scaleY (-1) #fc x #lc white  #lw 0.5 #translate (908.61694 ^& (-103.077631))

mdPoints :: [R2]
mdPoints = map r2 $[  (-6.00855,1.20384), (-5.1429,0.11746), (-1.84356,-6.92233), (-1.92481,-9.16932), (-2.57262,-6.18845), (-1.28838,-4.39833), (-7.50602,1.62236), (-14.87621,2.82332), (-37.45143,7.5509), (1.1313,5.01166), (0.96996,5.65811), (0.32332,-0.32332), (2.1016,-2.4249), (2.26324,-2.61766), (2.42491,-0.61556), (1.45496,-1.45495), (1.77826,-2.58657), (1.29328,0.64665), (2.90989,-0.32333), (2.58658,-2.10158), (2.00689,-1.45327), (1.84523,-0.48498), (1.64435,1.12995), (2.90989,1.45494), (1.93992,1.77827), (1.21246,1.53578), (4.12235,1.69743), (0.0,2.90989), (5.49646,1.29329), (1.14444,0.54198), (1.4119,-2.02832), (2.88197,1.97016), (-1.27817,2.48193), (-0.76527,3.98566), (-1.77826,2.58657), (0.0,2.10159), (0.64664,1.77827), (5.06395,1.35569), (4.3111,-0.0617), (3.07154,0.96997), (2.10159,0.32332), (0.96996,-2.10159), (-1.45494,-2.10158), (0.0,-1.77827), (-2.42491,-2.10159), (-2.10158,-5.49645), (1.29328,-5.3348), (-0.16166,-2.10158), (-1.29328,-1.29329)]

mdTrail :: Trail R2
mdTrail = fromOffsets mdPoints

mdLineSegs :: [Segment Closed R2]
mdLineSegs = trailSegments mdTrail

mdx2 = r2 (1.45494,-2.26324)
[mdc1, mdc2] = map r2 [(0,0),(1.45494,-1.6166)]

mdbezierSegment :: Segment Closed R2
mdbezierSegment  = bezier3 mdc1 mdc2 mdx2

mdx3 = r2 (0.48498,-2.10159)
[mdc3, mdc4] = map r2 $[(0, -0.64665), (0.48498,-2.10159)]

mdbezierSegment1 :: Segment Closed R2
mdbezierSegment1 = bezier3 mdc3 mdc4 mdx3

mdPoints1 :: [R2]
mdPoints1 = map r2 $[ (1.93993,-1.29328), (1.93992,-1.61661), (0.48498,0.96997), (-1.45494,1.6166), (-1.29328,3.71819), (0.32332,1.13162), (1.77826,0.32332), (0.48498,5.49646), (-2.10158,0.96996), (0.32332,3.55653), (0.48498,-0.16166), (1.13162,-1.93992), (1.61661,1.77826), (-1.61661,1.29329), (-0.32332,3.39487), (2.58657,3.39487), (3.87985,0.48498), (1.61661,-0.8083), (3.23655,4.18293), (1.35835,0.5363), (6.65367,-2.79695), (2.00758,-4.02387), (-0.43596,-4.90798)]

mdTrail1 :: Trail R2
mdTrail1 = fromOffsets mdPoints1

mdLineSegs1 :: [Segment Closed R2]
mdLineSegs1 = trailSegments mdTrail1

mdCombSegs :: [Segment Closed R2]
mdCombSegs = mdLineSegs ++ [mdbezierSegment] ++ [mdbezierSegment1] ++ mdLineSegs1
    
mdCombLine :: Trail' Line R2
mdCombLine = lineFromSegments mdCombSegs

mdgluedLine :: Trail' Loop R2
mdgluedLine = glueLine mdCombLine

mdStrokedLine :: Renderable (Path R2) b => Diagram b R2
mdStrokedLine = strokeLoop mdgluedLine

--  mdfigure :: Renderable (Path R2) b => Diagram b R2
mdfigure x = mdStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate (839.79175 ^& (-252.41476))

md2Points :: [R2]
md2Points = map r2 $[ (1.13162,2.50575), (0.16166,1.77827), (1.13163,1.8591)]

md2Trail :: Trail R2
md2Trail = fromOffsets md2Points

md2LineSegs :: [Segment Closed R2]
md2LineSegs = trailSegments md2Trail

md2x2 = r2 (0.88914,-1.21246)
[md2c1, md2c2] = map r2 [(0,0),(0.88914,-0.88914)]

md2bezierSegment :: Segment Closed R2
md2bezierSegment  = bezier3 md2c1 md2c2 md2x2

md2x3 = r2 (-0.72747,-3.07156)
[md2c3, md2c4] = map r2 $[(0,-0.32332), (-0.72747,-3.07156)]

md2bezierSegment1 :: Segment Closed R2
md2bezierSegment1 = bezier3 md2c3 md2c4 md2x3

md2Points1 :: [R2]
md2Points1 = map r2 $[ (-0.72748,-2.34409), (-1.8591,0.48499)]

md2Trail1 :: Trail R2
md2Trail1 = fromOffsets md2Points1

md2LineSegs1 :: [Segment Closed R2]
md2LineSegs1 = trailSegments md2Trail1

md2CombSegs :: [Segment Closed R2]
md2CombSegs = md2LineSegs ++ [md2bezierSegment, md2bezierSegment1] ++ md2LineSegs1
    
md2CombLine :: Trail' Line R2
md2CombLine = lineFromSegments md2CombSegs

md2gluedLine :: Trail' Loop R2
md2gluedLine = glueLine md2CombLine

md2StrokedLine :: Renderable (Path R2) b => Diagram b R2
md2StrokedLine = strokeLoop md2gluedLine

--md2figure :: Renderable (Path R2) b => Diagram b R2
mdfigure1 x = md2StrokedLine # scaleY (-1) #fc x #lc black #lw 0.5  #translate (823.82217 ^& (-261.44348))

ma = fromOffsets . map r2 $[(2.17192,-0.68588), (0.45726,-1.71467), (1.0288,0.11431), (1.0288,2.28624), (-1.25742,0.45724), (-3.8866,0.11432), (0.45724,-0.57156)]

mafigure x = ma #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (899.6235 ^& (-173.25394)) 

ma1 = fromOffsets . map r2 $[ (2.28622,-2.62917), (1.60037,0.0), (1.82899,1.48605), (-2.40054,1.0288), (-2.17192,1.0288), (-1.14312,-0.91448)]

mafigure1 x = ma1 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (890.2499499999999 ^& (-174.05412))

ma2 = fromOffsets . map r2 $[ (17.64687,-4.64068), (2.26326,-0.64664), (1.91408,-2.79571), (3.73677,-1.66331), (2.88924,4.41284), (-2.42491,5.17314), (-0.32332,1.45494), (1.93993,2.58657), (1.13162,-0.8083), (1.77827,0.0), (2.26324,2.58656), (3.87986,5.98144), (3.55653,0.48498), (2.26324,-0.96996), (1.77827,-1.77827), (-0.80831,-2.74822), (-2.10158,-1.61661), (-1.45495,0.8083), (-0.96996,-1.29328), (0.48498,-0.48498), (2.10159,-0.16166), (1.77826,0.8083), (1.93993,2.42491), (0.96996,2.90989), (0.32332,2.4249), (-4.20317,1.45495), (-3.87985,1.93992), (-3.87985,4.5265), (-1.93993,1.45494), (0.0,-0.96996), (2.42491,-1.45495), (0.48498,-1.77826), (-0.8083,-3.07155), (-2.90989,1.45494), (-0.8083,1.45495), (0.48498,2.26324), (-2.06633,1.00043), (-2.7472,-4.52713), (-3.39488,-4.36484), (-2.0705,-1.81247), (-6.53327,1.8762), (-5.09233,1.05079), (-20.67516,4.59221), (-0.66776,-4.76785), (0.64664,-10.58877), (4.28927,-0.88914), (6.78975,-1.2933)]

mafigure2 x = ma2 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (855.4508199999999 ^& (-152.06593))

mix2 = r2 (-2.4249,-2.10159)
[mic1,mic2] = map r2 [(0,0), (-2.58656,-1.45495)]

mibezierSegment :: Segment Closed R2
mibezierSegment = bezier3 mic1 mic2 mix2

mix3 = r2 (0.48498,-5.01147)
[mic3,mic4] = map r2 [( 0.16166,-0.64664), (0.48498,-5.01147)]

mibezierSegment1 :: Segment Closed R2
mibezierSegment1 = bezier3 mic3 mic4 mix3

milineListOfPoints :: [R2]
milineListOfPoints =  map r2 $ [(-3.23321,-8.24469), (-2.26325,-9.05298), (-2.4249,-3.23321), (-2.58657,-1.77827), (-1.6166,1.13163), (-3.87986,1.77826), (-1.93992,5.01148), (-2.74823,3.71819), (-1.13162,0.64664), (-1.45495,-0.64664)]

milineTrail :: Trail R2
milineTrail = fromOffsets milineListOfPoints

milineSegs :: [Segment Closed R2]
milineSegs = trailSegments milineTrail

milineListOfPoints1 :: [R2]
milineListOfPoints1 =  map r2 $ [(3.39487,-1.29329), (0.8083,-3.39487), (0.64664,-2.58656), (2.42491,-1.61661), (-0.32332,-10.02295), (-1.61661,-2.26324), (-1.29328,-0.80831), (-0.8083,-2.10158), (0.8083,-0.8083), (1.6166,0.32332), (0.16166,-1.61661), (-2.4249,-2.26325), (-1.29329,-2.58656), (-2.58656,0.0), (-4.5265,-1.45495), (-5.49645,-3.39487), (-2.74823,0.0), (-0.64664,0.64665), (-0.96997,-0.48499), (-3.07154,-2.26324), (-2.90989,1.77826), (-2.90989,2.26325), (0.32332,3.55653), (0.96996,0.32332), (2.10159,0.48498), (0.48498,0.8083), (-2.58657,0.80831), (-2.58656,0.32332), (-1.45495,1.77826), (-0.32332,2.10159), (0.32332,1.6166), (0.32332,5.49646), (-3.55653,2.10159), (-0.64664,-0.16167), (0.0,-4.20317), (1.29328,-2.4249), (0.64665,-2.42491), (-0.80831,-0.8083), (-1.93992,0.8083), (-0.96997,4.20317), (-2.74822,1.13162), (-1.77827,1.93993), (-0.16166,0.96996), (0.64664,0.8083), (-0.64664,2.58657), (-2.26325,0.48498), (0.0,1.13163), (0.80831,2.4249), (-1.13163,6.1431), (-1.6166,4.04151), (0.64664,4.68816), (0.48498,1.13162), (-0.8083,2.42491), (-0.32332,0.8083), (-0.32332,2.74823), (3.55653,5.98143), (2.90989,6.46642), (1.45494,4.84982), (-0.8083,4.68815), (-0.96996,5.98144), (-2.42491,5.17313), (-0.32332,2.74823), (-3.25887,3.08515), (4.40861,-0.16205), (21.41849,-2.26325), (7.27784,-0.98706), (0.0964,1.66635), (6.85194,-1.21246), (10.29808,-1.50313), (3.8542,-0.46091), (0.13805,-0.58755), (0.16166,-1.45494), (2.10158,-3.71819), (2.00056,-1.73785), (-0.22229,-5.05189), (1.59699,-1.59699), (1.09062,-0.34294), (0.22228,-3.55653), (1.53577,-3.03112), (1.05079,0.60622), (0.16166,0.64664), (0.80831,0.16166), (1.93992,-0.96996), (-0.32332,-9.53797)]

milineTrail1 :: Trail R2
milineTrail1 = fromOffsets milineListOfPoints1

milineSegs1 :: [Segment Closed R2]
milineSegs1 = trailSegments milineTrail1

micombinedSegs :: [Segment Closed R2]
micombinedSegs = milineSegs ++ [mibezierSegment, mibezierSegment1] ++ milineSegs1

micombinedLine :: Trail' Line R2
micombinedLine = lineFromSegments micombinedSegs

migluedLine :: Trail' Loop R2
migluedLine = glueLine micombinedLine

mistrokedLine :: Renderable (Path R2) b => Diagram b R2
mistrokedLine = strokeLoop migluedLine

--mifigure :: Renderable (Path R2) b => Diagram b R2
mifigure x = mistrokedLine #scaleY (-1) #fc x #lc white  #lw 0.5 #translate (697.86005 ^& (-177.2369))

sp = fromOffsets . map r2 $ [ (1.82899,-2.057604), (2.17192,-0.800181), (5.37264,-3.886597), (2.28622,-0.571559), (0.45726,0.457254), (-5.14402,5.14402), (-3.31504,1.943289), (-2.05761,0.914496), (-1.60036,-1.143118)]

mifigure1 x = sp #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.01 #translate (581.6193 ^& (-82.059006))

splineListOfPoints :: [R2]
splineListOfPoints =  map r2 $ [ (0.64664,2.50574), (3.23322,0.16166), (1.29329,-1.21246)]

splineTrail :: Trail R2
splineTrail = fromOffsets splineListOfPoints

splineSegs :: [Segment Closed R2]
splineSegs = trailSegments splineTrail

spx2 = r2 (-0.40415,-1.61661)
[spc1,spc2] = map r2 [(0,0), (-0.0808,-1.45494)]

spbezierSegment :: Segment Closed R2
spbezierSegment = bezier3 spc1 spc2 spx2

spx3 = r2 (-1.61661,-1.8591)
[spc3,spc4] = map r2 [( -0.32333,-0.16166), (-1.61661,-1.8591)]

spbezierSegment1 :: Segment Closed R2
spbezierSegment1 = bezier3 spc3 spc4 spx3

splineListOfPoints1 :: [R2]
splineListOfPoints1 =  map r2 $ [ (-2.18242,0.24249), (-1.61662,0.16166), (-0.32332,1.13163), (0.96997,0.48499)]

splineTrail1 :: Trail R2
splineTrail1 = fromOffsets splineListOfPoints1

splineSegs1 :: [Segment Closed R2]
splineSegs1 = trailSegments splineTrail1

spcombinedSegs :: [Segment Closed R2]
spcombinedSegs = splineSegs ++ [spbezierSegment, spbezierSegment1] ++ splineSegs1

spcombinedLine :: Trail' Line R2
spcombinedLine = lineFromSegments spcombinedSegs

spgluedLine :: Trail' Loop R2
spgluedLine = glueLine spcombinedLine

spstrokedLine :: Renderable (Path R2) b => Diagram b R2
spstrokedLine = strokeLoop spgluedLine

--spfigure :: Renderable (Path R2) b => Diagram b R2
mifigure2 x = spstrokedLine #scaleY (-1) #fc x #lc white  #lw 0.5 #translate (667.7936900000001 ^& (-114.18718999999999))

sp1 = fromOffsets . map r2 $ [  (0.71628,-0.5804), (2.74823,-0.80831), (3.55653,-2.26324), (0.0,-0.96997), (0.64665,-0.64664), (5.98143,-0.96996), (2.42491,-1.93993), (4.36483,-2.10158), (0.16166,-1.293286), (1.93993,-2.909889), (1.77826,-0.808302), (1.29329,-1.778265), (2.26324,-2.263247), (4.36484,-2.424907), (4.68815,-0.484981), (1.13162,1.131623), (-0.32332,0.969963), (-3.71819,0.969963), (-1.45494,3.071549), (-2.26325,0.808302), (-0.48498,2.424907), (-2.42491,3.23321), (-0.32332,2.58657), (0.8083,0.48498), (0.96997,-1.13162), (3.55653,-2.90989), (1.29328,1.29328), (2.26325,0.0), (3.23321,0.96996), (1.45494,1.13163), (1.45494,3.07155), (2.74823,2.74822), (3.87985,-0.16166), (1.45495,-0.96996), (1.6166,1.29328), (1.61661,0.48499), (1.29328,-0.80831), (1.13162,0.0), (1.61661,-0.96996), (4.04151,-3.55653), (3.39487,-1.13162), (6.62808,-0.32332), (4.52649,-1.93993), (2.58657,-1.29328), (1.45495,0.16166), (0.0,5.65811), (0.48498,0.32332), (2.90988,0.80831), (1.93993,-0.48499), (6.1431,-1.6166), (1.13162,-1.13162), (1.45495,0.48498), (0.0,6.9514), (3.23321,3.07155), (1.29328,0.64664), (1.29328,0.96996), (-1.29328,0.32332), (-0.8083,-0.32332), (-3.71819,-0.48498), (-2.10159,0.64664), (-2.26325,-0.16166), (-3.23321,1.45495), (-1.77826,0.0), (-5.81978,-1.29329), (-5.17313,0.16166), (-1.93993,2.58657), (-6.9514,0.64664), (-2.42491,0.8083), (-1.13162,3.07155), (-1.29328,1.13163), (-0.48498,-0.16166), (-1.45495,-1.61661), (-4.52649,2.42491), (-0.64664,0.0), (-1.13163,-1.61661), (-0.8083,0.16166), (-1.93992,4.36484), (-0.96997,4.04151), (-3.18112,7.0008), (-1.17676,-1.03427), (-1.37174,-1.03132), (-1.94078,-10.28802), (-3.54448,-1.37005), (-2.05258,-2.28623), (-12.12036,-2.74348), (-2.85527,-1.02964), (-8.23042,-2.17274), (-7.88999,-1.14312), (-3.7193,-5.14569)]

mifigure3 x = sp1 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 1 #translate (567.49209 ^& (-111.21318))

mn = fromOffsets . map r2 $ [ (-0.45725,-8.45904), (-1.82898,-7.31592), (-1.82898,-13.488725), (-0.45725,-9.830778), (-1.82898,-3.429343), (-1.60036,-5.029695), (0.0,-10.28802), (0.68586,-3.886587), (-1.82093,-5.451667), (30.13242,0.03527), (0.32332,-8.244684), (0.64664,-0.161661), (2.26325,0.484982), (1.93992,0.808302), (0.8083,5.496456), (1.45495,6.143098), (1.6166,1.616605), (4.84982,0.0), (0.32332,1.454944), (6.30476,0.323321), (0.0,2.101586), (4.84981,0.0), (0.32332,-1.293284), (1.13162,-1.131623), (2.26325,-0.646642), (1.29328,0.969963), (2.90989,0.0), (3.87985,2.586567), (5.3348,2.424907), (2.42491,0.484982), (0.48498,-0.969963), (1.45494,-0.484982), (0.48498,2.909889), (2.58657,1.293284), (0.48498,-0.484982), (1.29329,0.161661), (0.0,2.101586), (2.58656,0.969963), (3.07155,0.0), (1.61661,-0.808303), (3.23321,-3.233209), (2.58656,-0.484981), (0.80831,1.778265), (0.48498,1.293283), (0.96996,0.0), (0.96996,-0.808302), (8.89133,-0.323321), (1.77826,3.071549), (0.64665,0.0), (0.71361,-1.084279), (4.43991,-0.370665), (-0.6121,2.279459), (-3.93872,1.837125), (-9.24578,4.061128), (-4.77474,2.006897), (-3.07155,2.586568), (-2.42491,3.55653), (-2.26324,3.879851), (-1.77827,0.808304), (-4.52649,5.01147), (-1.29329,0.16166), (-4.32778,2.75712), (-2.46288,3.20511), (-0.22862,3.19139), (0.0944,8.04335), (-1.37604,1.68875), (-5.08154,3.75997), (-2.23008,5.98241), (2.87175,2.23371), (0.67989,3.22698), (-1.85524,3.23893), (0.17079,3.74802), (0.36886,6.7304), (3.02825,3.00199), (3.329,0.0), (1.89111,3.1326), (3.37917,0.50327), (3.85916,5.67147), (7.08729,4.11675), (2.14315,2.87512), (0.67115,6.43951), (-81.2115,1.14479), (-0.33792,-35.67685), (-0.45724,-2.97209), (-4.11521,-3.42934), (-1.14312,-1.82898), (0.0,-1.60037), (2.0576,-1.60035), (1.37174,-1.37174), (0.22863,-3.20072)]

mnfigure x = mn #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (475.23782 ^& (-128.82439))

ms = fromOffsets . map r2 $[ (-0.25426,1.25615), (-5.17314,0.0), (-1.45494,-0.8083), (-2.10159,-0.32332), (-6.78974,1.93992), (-1.77826,-0.8083), (-2.58657,4.20317), (-1.10254,0.77802), (-1.12383,-2.48798), (-1.14312,-3.88659), (-3.42933,-3.20071), (1.1431,-5.54455), (-0.68586,-0.91449), (-1.82898,0.22862), (-7.91792,0.87337), (-24.5465,0.37337), (-0.76974,-2.22536), (0.87337,-8.3768), (3.11684,-5.67281), (5.22707,-9.1449), (-0.44574,-2.4326), (1.23686,-0.65625), (0.43587,-1.91947), (-2.31748,-2.07898), (-0.11512,-2.14148), (-1.83572,-4.12109), (-0.109,-5.96277), (1.32753,-2.48097), (-0.2233,-3.41575), (-1.76949,-3.08259), (1.52642,-1.48221), (-1.57061,-2.49954), (0.45725,-1.65221), (1.5774,-6.52637), (2.48595,-2.03635), (-0.64167,-2.36697), (3.65797,-5.30253), (2.83186,-1.35642), (-0.22097,-1.67516), (-0.28813,-1.6811), (2.87606,-5.56767), (2.34572,-1.23151), (0.15163,-0.89301), (37.34348,-3.88117), (0.18486,6.28333), (0.16166,16.65106), (-0.8083,31.03885), (-0.16166,14.06449), (2.74824,18.75264), (1.48437,13.39529)]

msfigure x = ms #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (631.55884 ^& (-459.34457))

mo = fromOffsets . map r2 $[ (-2.51987,-3.08725), (-1.14312,-2.28623), (-64.35723,2.40054), (-2.28626,0.11431), (1.25743,2.51485), (-0.22862,2.28622), (2.51484,3.88659), (3.0864,4.11521), (3.08641,2.74347), (2.16123,0.22862), (1.49673,0.9145), (0.0,2.97209), (-1.82897,1.60036), (-0.45726,2.28622), (2.05761,3.42935), (2.51486,2.97209), (2.51484,1.82898), (1.37173,11.65975), (0.31414,36.07221), (0.22862,4.68675), (0.45724,5.38351), (22.43299,-0.86682), (23.20603,-0.68587), (20.80466,-0.80101), (11.65474,-0.2303), (2.1694,3.426), (-0.68419,3.3075), (-3.08725,2.40304), (-0.57239,1.83734), (5.37849,0.45726), (3.89496,-0.68588), (1.71718,-5.49363), (0.65142,-5.85679), (2.09803,-2.55516), (2.59603,-1.48689), (0.0514,-3.05024), (1.01602,-1.93648), (-1.69423,-2.54377), (-1.33093,0.98426), (-1.99262,-2.22724), (-1.28503,-4.759), (0.80101,-2.5182), (-1.94413,-3.42766), (-1.83064,-4.5758), (-4.79941,-0.79934), (-6.9688,-5.59875), (-1.71886,-4.11353), (0.79935,-3.20072), (2.05927,-6.05767), (0.45892,-2.86363), (-1.94914,-1.03131), (-6.85534,-0.79767), (-1.02797,-1.71216), (-0.1118,-4.23036), (-5.48694,-3.43101), (-6.97551,-7.7715), (-2.28622,-7.31593), (-0.23029,-4.22532), (0.80101,-2.2879)]

mofigure x = mo #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (558.44025 ^& (-248.11316))

mt = fromOffsets . map r2 $[(338.5352 - 369.20952, 54.1613 - 56.969133), (-29.26055,-3.55653),(-29.26054,-4.041512), (-32.3321,-5.334795), (-18.42929,-3.39487), (-32.72365,-6.932736), (-4.47902,21.347532), (3.42934,7.544541), (-1.37174,4.572452), (1.82898,4.572451), (3.20073,1.371739), (4.62082,10.769453), (2.6951,3.176523), (0.45724,1.143118), (3.42934,1.143118), (0.45725,2.057593), (-7.0873,17.603952), (0.0,2.51485), (2.51485,3.20071), (0.91448,0.0), (4.80107,-2.97209), (0.68588,-1.14312), (1.60036,0.68587), (-0.22863,5.25832), (2.74348,12.57425), (2.97209,2.51484), (0.91448,0.68587), (1.82899,2.28622), (-0.45725,3.42935), (0.68587,3.42933), (1.14312,0.9145), (2.28622,-2.28623), (2.74347,0.0), (3.20072,1.60036), (2.51485,-0.91449), (4.11521,0.0), (3.65795,1.60036), (2.74348,-0.45725), (0.45724,-2.9721), (2.97209,-0.68586), (1.37174,1.37174), (0.45725,3.20071), (1.42587,0.83464), (1.88695,-11.03474), (106.74567,13.42892), (8.80221,-86.29916)]

mtfigure x = mt #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (369.20952 ^& (-56.969133 ))

ne = fromOffsets . map r2 $ [ (3.23061,7.01991), (-0.12863,2.30252), (3.45922,5.49388), (2.71929,3.15234), (-5.04948,0.0), (-43.48256,-0.93868), (-40.78686,-0.8903), (-22.25222,-0.78387), (1.07277,-21.32785), (-32.31824,-2.92025), (4.34383,-44.00986), (15.54633,1.02881), (20.11879,1.1431), (17.83257,1.14312), (23.77676,1.14311), (10.74526,-0.45724), (2.0576,2.28622), (4.80108,2.9721), (1.14311,0.91449), (4.34383,-1.37174), (3.88659,-0.45724), (2.74347,-0.22863), (1.82898,1.37174), (4.05743,1.60036), (2.97209,1.60036), (0.45725,1.60036), (0.91449,2.0576), (1.82898,0.0), (0.79798,0.0462), (0.89423,4.68182), (2.92026,8.46792), (0.57253,3.75671), (2.52349,3.77425), (0.56959,5.11414), (1.60724,4.24037), (0.25234,6.47426)]

nefigure x = ne #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (486.09787 ^& (-240.70058))

nv = fromOffsets . map r2 $[(-23.63891,128.82275), (-1.83224,0.34915), (-1.57276,2.40618), (-2.37294,0.0107), (-1.47195,-2.74347), (-2.61847,-0.37842), (-0.77092,-1.10763), (-1.03783,-0.054), (-2.77837,1.64429), (-0.31026,6.78548), (-0.36209,5.77717), (-0.34857,8.59281), (-1.4471,2.08916), (-2.43892,-1.07403), (-69.07989,-104.20119), (18.989117,-67.58491), (93.0921,20.66601)]

nvfigure x = nv #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (196.39273 ^& (-185.57552))

nh1 = fromOffsets . map r2 $ [(0.869,-1.0765), (1.09022,-3.29102), (-2.54308,-0.91347), (-0.48499,-3.07156), (-3.87985,-1.13162), (-0.32332,-2.74824), (-7.27475,-23.44082), (-4.60142,-14.542988), (-0.89708,-0.0051), (-0.64664,1.616605), (-0.64664,-0.484981), (-0.96997,-0.969963), (-1.45494,1.939925), (-0.0485,5.032054), (0.31165,5.667218), (1.93992,2.74824), (0.0,4.04152), (-3.7182,5.06278), (-2.58657,1.13164), (0.0,1.13162), (1.13163,1.77827), (0.0,8.56802), (-0.80831,9.21467), (-0.16166,4.84982), (0.96997,1.2933), (-0.16166,4.52649), (-0.48499,1.77828), (0.96881,0.70922), (16.78767,-4.42455), (2.17487,-0.60245), (1.84357,-2.77333), (3.60523,-1.61312)]

nhfigure x = nh1 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (880.799 ^& (-142.42476))

nj = fromOffsets . map r2 $ [ (-2.32255,2.73427), (0.0,3.07156), (-1.93994,3.07155), (-0.16166,1.61662), (1.2933,1.29328), (-0.16166,2.42492), (-2.26326,1.13162), (0.8083,2.74823), (0.16166,1.13163), (2.74824,0.32332), (0.96996,2.58657), (3.55654,2.42492), (2.42491,1.6166), (0.0,0.80831), (-2.98321,2.69656), (-1.61661,2.26324), (-1.45495,2.74824), (-2.26325,1.29328), (-0.46245,1.60248), (-0.2425,1.21246), (-0.60923,2.60674), (1.09227,2.24419), (3.23321,2.90989), (4.84981,2.26325), (4.04151,0.64664), (0.16166,1.45494), (-0.8083,0.96996), (0.32332,2.74823), (0.8083,0.0), (2.10159,-2.4249), (0.8083,-4.84982), (2.74823,-4.04151), (3.07155,-6.46642), (1.13162,-5.49645), (-0.64664,-1.13163), (-0.16166,-9.37631), (-1.61661,-3.39486), (-1.13162,0.8083), (-2.74823,0.32332), (-0.48498,-0.48498), (1.13163,-0.96997), (2.10158,-1.93992), (0.0631,-1.09383), (-0.38439,-3.43384), (0.57337,-2.74824), (-0.11747,-1.96901), (-2.80754,-1.75035), (-5.09214,-1.17576), (-4.13744,-1.38163), (-3.58563,-1.64569)]

njfigure x = nj #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (829.67944 ^& (-188.46016))

nm = fromOffsets . map r2 $[(-0.77541,-4.7481), (8.64378,0.5254), (30.17176,2.9459), (27.26816,1.68989), (2.21527,-18.70747), (3.85736,-55.87597), (1.73768,-19.38923), (1.5717,0.12856), (0.8254,-11.16339), (-104.00445,-10.63595), (-17.49735,120.43481), (15.46067,1.98915), (1.29328,-10.02295), (29.23215,2.82935)]

nmfigure x = nm #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (288.15256 ^& (-424.01315))

ny = fromOffsets . map r2 $ [ (-1.13163,-0.96996), (-2.58658,-0.16166), (-2.26324,-1.93992), (-1.63061,-6.12913), (-3.45846,0.0905), (-2.44371,-2.7082), (-19.38532,4.38194), (-43.00178,8.72969), (-7.52965,1.22799), (-0.73816,-6.46834), (1.4281,-1.12538), (1.29328,-1.13162), (0.96997,-1.61661), (1.77826,-1.13162), (1.93993,-1.77827), (0.48498,-1.6166), (2.10158,-2.74823), (1.13163,-0.96996), (-0.16166,-0.96997), (-1.29329,-3.07154), (-1.77826,-0.16166), (-1.93993,-6.1431), (2.90989,-1.77827), (4.36483,-1.45494), (4.04152,-1.29329), (3.23321,-0.48498), (6.30475,-0.16166), (1.93993,1.29329), (1.6166,0.16166), (2.10159,-1.29329), (2.58657,-1.13162), (5.17313,-0.48498), (2.10159,-1.77827), (1.77826,-3.23321), (1.61661,-1.93992), (2.10158,0.0), (1.93993,-1.13163), (0.16166,-2.26324), (-1.45494,-2.10159), (-0.32332,-1.45494), (1.13162,-2.10159), (0.0,-1.45494), (-1.77827,0.0), (-1.77826,-0.8083), (-0.8083,-1.13163), (-0.16166,-2.58657), (5.81977,-5.49645), (0.64664,-0.8083), (1.45495,-2.90989), (2.90989,-4.5265), (2.74823,-3.71819), (2.10158,-2.4249), (2.4151,-1.82561), (3.08136,-1.24594), (5.49645,-1.29329), (3.23321,0.16166), (4.5265,-1.45494), (7.56519,-2.07117), (0.51979,4.97967), (2.42492,6.46644), (0.8083,5.17315), (-0.96996,3.87986), (2.58657,4.5265), (0.8083,2.10159), (-0.8083,2.9099), (2.9099,1.29328), (0.64664,0.32332), (3.07156,10.99294), (-0.53629,5.05967), (-0.48498,10.83127), (0.8083,5.49647), (0.8083,3.55654), (1.45495,7.27474), (0.0,8.08304), (-1.13163,2.26325), (1.83933,1.99279), (0.79655,1.67842), (-1.93992,1.77827), (0.32332,1.29328), (1.29328,-0.32332), (1.45495,-1.29328), (2.26324,-2.58657), (1.13163,-0.64664), (1.6166,0.64664), (2.26325,0.16166), (7.92136,-3.87985), (2.90989,-2.74823), (1.29328,-1.45494), (4.20317,1.6166), (-3.39487,3.55653), (-3.87985,2.90989), (-7.11306,5.33479), (-2.58656,0.96997), (-5.81978,1.93992), (-4.04151,1.13163), (-1.17474,-0.53293), (-0.24402,-3.68853), (0.48498,-2.74824), (-0.16166,-2.10158), (-2.81351,-1.699), (-4.5265,-0.96997), (-3.87986,-1.13162), (-3.7182,-1.77828)]

nyfigure x = ny #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (830.37946 ^& (-188.7456)) 

ncPoints :: [R2]
ncPoints = map r2 $[(2.085,4.91735), (3.55653,6.46642), (2.4249,2.42491), (0.64664,2.26325), (-2.4249,0.16166), (0.8083,0.64664), (-0.32332,4.20317), (-2.58657,1.29328), (-0.64664,2.10159), (-1.29328,2.90989), (-3.7182,1.6166), (-2.4249,-0.32332), (-1.45495,-0.16166), (-1.6166,-1.29328), (0.32332,1.29328), (0.0,0.96997), (1.93993,0.0), (0.8083,1.29328), (-1.93993,6.30476), (4.20317,0.0), (0.64665,1.6166), (2.26324,-2.26324), (1.29329,-0.48499), (-1.93993,3.55653), (-3.07155,4.84982), (-1.29328,0.0), (-1.13163,-0.48498), (-2.74822,0.64664), (-5.17314,2.42491), (-6.46642,5.33479), (-3.39487,4.68815), (-1.93992,6.46642), (-0.48498,2.42491), (-4.68816,0.48498), (-5.45313,1.33666), (-9.94641,-8.20253), (-12.60954,-7.59805), (-2.90989,-0.80831), (-12.60953,1.45495), (-4.27646,0.75015), (-1.6166,-3.23322), (-2.97036,-2.1167), (-16.48939,0.48498), (-7.27474,0.8083), (-9.05299,4.52651), (-6.14311,2.58656), (-21.17755,2.58658), (0.50009,-4.05433), (1.77827,-1.45494), (2.74824,-0.64665), (0.64664,-3.7182), (4.20318,-2.74822), (3.87985,-1.45496), (4.20319,-3.55653), (4.36483,-2.10159), (0.64664,-3.07156), (3.87986,-3.87985), (0.64664,-0.16166)]

ncTrail :: Trail R2
ncTrail = fromOffsets ncPoints

ncLineSegs :: [Segment Closed R2]
ncLineSegs = trailSegments ncTrail

ncx2 = r2 (0.80831,1.13163)
[ncc1, ncc2] = map r2 [(0,0),(0,1.13163)]

ncbezierSegment :: Segment Closed R2
ncbezierSegment  = bezier3 ncc1 ncc2 ncx2

ncx3 = r2 (1.93993,0.32332)
[ncc3, ncc4] = map r2 $[(0.8083,0), (1.93993,0.32332)]

ncbezierSegment1 :: Segment Closed R2
ncbezierSegment1 = bezier3 ncc3 ncc4 ncx3

ncPoints1 :: [R2]
ncPoints1 = map r2 $[ (2.26325,-3.55654), (2.10159,-0.64665), (2.26324,0.32333), (1.61662,-3.55653), (2.90989,-2.58658), (0.48498,-2.10159), (0.1875,-3.64819), (4.2765,-0.025), (7.19859,-0.85579), (15.75723,-2.25243), (15.13604,-2.08657), (21.64048,-4.71935), (19.98332,-4.25857), (11.17694,-2.40581), (5.04998,-1.15688)]

ncTrail1 :: Trail R2
ncTrail1 = fromOffsets ncPoints1

ncLineSegs1 :: [Segment Closed R2]
ncLineSegs1 = trailSegments ncTrail1

ncCombSegs :: [Segment Closed R2]
ncCombSegs = ncLineSegs ++ [ncbezierSegment, ncbezierSegment1] ++ ncLineSegs1
    
ncCombLine :: Trail' Line R2
ncCombLine = lineFromSegments ncCombSegs

ncgluedLine :: Trail' Loop R2
ncgluedLine = glueLine ncCombLine

ncStrokedLine :: Renderable (Path R2) b => Diagram b R2
ncStrokedLine = strokeLoop ncgluedLine

--ncfigure :: Renderable (Path R2) b => Diagram b R2
ncfigure x = ncStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate  (834.9815 ^& (-294.31555))

nc = fromOffsets . map r2 $ [(2.58658,-2.50575), (3.15238,-2.58658), (1.53578,-0.64664), (0.16166,-2.02076), (-0.64664,-6.14312), (-1.45495,-2.34408), (-0.64665,-1.8591), (0.72748,-0.2425), (2.74824,5.49648), (0.40415,4.44567), (-0.16166,3.39489), (-3.39488,1.53577), (-2.82907,2.42492), (-1.13162,1.21246), (-1.0508,-0.16166)]

ncfigure1 x = nc #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (839.25199 ^& (-327.52211))

nd = fromOffsets . map r2 $[ (-0.61491,-8.43367), (-1.67695,-6.81592), (-1.89149,-13.02422), (-0.45724,-10.987026), (-1.73946,-3.077142), (-1.75661,-5.194396), (0.0312,-10.44427), (0.62336,-3.824087), (-1.8341,-5.467761), (-28.64225,-0.564027), (-18.59095,-0.646642), (-26.51232,-1.293284), (-22.94634,-2.133869), (-6.99324,67.176834), (54.93224,3.34365), (58.06901,1.38583)]

ndfigure x = nd #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (475.30527 ^& (-128.91846))

ohPoints :: [R2]
ohPoints = map r2 $[(-6.09354,4.05335), (-3.87985,2.26325), (-3.39487,3.71819), (-4.04151,3.87985), (-3.23321,0.8083), (-2.90989,0.48498), (-5.49646,2.58657), (-2.10158,0.16166), (-3.39487,-3.07155), (-5.17314,0.64665), (-2.58656,-1.45495), (-2.38107,-1.35083), (-4.89257,0.70341), (-10.18462,1.61661), (-11.20687,2.18473), (1.29329,14.63028), (1.77827,13.74117), (2.58656,23.4408), (0.56582,4.83117), (4.12235,-0.12902), (2.42491,-0.80831), (3.3638,1.50314), (2.07049,4.36483), (5.13894,-0.0171), (1.89174,2.1187), (1.76117,-0.0653), (2.53839,-1.34146), (2.50417,0.3715), (5.42128,0.48268), (1.72697,-2.13268), (2.34565,-1.29328), (2.07049,-0.68085), (0.64664,2.74824), (1.77828,0.96996), (3.47569,2.34407), (2.18242,-0.0808), (1.33312,-0.49248), (0.18471,-2.76153), (1.58536,-1.45496), (0.0992,-4.79272)]

ohTrail :: Trail R2
ohTrail = fromOffsets ohPoints

ohLineSegs :: [Segment Closed R2]
ohLineSegs = trailSegments ohTrail

ohx2 = r2 (1.02396,-4.10906)
[ohc1, ohc2] = map r2 [(0,0),(1.02396,-4.10906)]

ohbezierSegment :: Segment Closed R2
ohbezierSegment  = bezier3 ohc1 ohc2 ohx2

ohPoints1 :: [R2]
ohPoints1 = map r2 $[ (1.29927,-0.60128), (1.32135,1.14774), (0.53815,1.69702), (1.71913,-1.03742), (0.43898,-1.46075), (-1.11669,-1.90306), (0.0663,-2.31443), (0.749,-1.07231), (2.15276,-3.30648), (1.05022,-1.54334), (2.10159,0.48498), (2.26325,-1.61661), (3.07155,-3.39487), (2.77149,-4.07873), (0.32033,-5.05551), (0.48498,-5.01149), (-0.17678,-5.30688), (-0.95484,-2.89478), (0.35124,-1.18978), (1.80439,-1.75011), (-2.28879,-9.04733), (-2.90989,-19.36177)]

ohTrail1 :: Trail R2
ohTrail1 = fromOffsets ohPoints1

ohLineSegs1 :: [Segment Closed R2]
ohLineSegs1 = trailSegments ohTrail1

ohCombSegs :: [Segment Closed R2]
ohCombSegs = ohLineSegs ++ [ohbezierSegment] ++ ohLineSegs1

ohCombLine :: Trail' Line R2
ohCombLine = lineFromSegments ohCombSegs

ohgluedLine :: Trail' Loop R2
ohgluedLine = glueLine ohCombLine

ohStrokedLine :: Renderable (Path R2) b => Diagram b R2
ohStrokedLine = strokeLoop ohgluedLine

--ohfigure :: Renderable (Path R2) b => Diagram b R2
ohfigure x = ohStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate  (735.32495 ^& (-193.32832)) 

ok = fromOffsets . map r2 $ [(-16.68418,-1.27331), (-0.88022,10.95243), (20.46538,1.15688), (32.05555,1.3036), (-2.3346,24.41865), (-0.45725,17.83257), (0.22863,1.60036), (4.34383,3.65796), (2.0576,1.14311), (0.68587,-0.22862), (0.68587,-2.05761), (1.37174,1.82899), (2.0576,0.0), (0.0,-1.37174), (2.74347,1.37174), (-0.45724,3.88658), (4.11521,0.22862), (2.51484,1.14312), (4.11521,0.68587), (2.51485,1.82898), (2.28623,-2.0576), (3.42934,0.68586), (2.51485,3.42934), (0.91448,0.0), (0.0,2.28623), (2.28623,0.68586), (2.28622,-2.28622), (1.82899,0.68586), (2.51484,0.0), (0.9145,2.51486), (6.30107,2.07897), (1.37174,-0.68586), (1.82898,-4.11521), (1.14311,0.0), (1.14312,2.0576), (4.11521,0.68587), (3.65795,1.37174), (2.9721,0.91449), (1.82899,-0.91449), (0.68586,-2.51485), (4.34383,0.0), (2.0576,0.91449), (2.74347,-2.05761), (1.14312,0.0), (0.68587,1.60036), (4.1152,0.0), (1.60036,-2.0576), (1.82899,0.45724), (2.0576,2.51486), (3.20071,1.82897), (3.20073,0.9145), (1.94108,1.11893), (-0.3891,-37.21701), (-1.37175,-10.97398), (-0.16046,-8.87234), (-1.43989,-6.53773), (-0.7782,-7.17964), (-0.0681,-3.81622), (-12.13684,0.31874), (-46.41004,-0.45724), (-45.03891,-2.05762), (-24.2912,-1.37173)]

okfigure x = ok #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (380.34314 ^& (-320.82147))

oregon = fromOffsets . map r2 $[(8.8497,-34.80151), (1.05079,-4.22952), (2.35437,-5.62323), (-0.61551,-1.16288), (-2.51486,-0.0462), (-1.2816,-1.6707), (0.45724,-1.46407), (0.50341,-3.24688), (4.45815,-5.48695), (1.82898,-1.09915), (1.14311,-1.14311), (1.48604,-3.56563), (4.04706,-5.6694), (3.56563,-3.8624), (0.22862,-3.451314), (-3.26886,-2.468682), (-1.78341,-4.642625), (-12.66377,-3.61197), (-15.08909,-3.54365), (-15.43202,0.114306), (-0.45724,-1.371729), (-5.48695,2.057604), (-4.45814,-0.571559), (-2.40054,-1.600361), (-1.25742,0.685875), (-4.68676,-0.228632), (-1.71467,-1.371729), (-5.25832,-2.057604), (-0.800182,0.114316), (-4.34383,-1.486056), (-1.943291,1.828983), (-6.172812,-0.342927), (-5.944183,-4.115209), (0.685865,-0.80018), (0.228621,-7.773173), (-2.286225,-3.886577), (-4.115208,-0.571559), (-0.685865,-2.514847), (-2.353932,-0.466565), (-5.798525,2.058784), (-2.263247,6.466418), (-3.233209,10.022949), (-3.23321,6.466419), (-5.011474,14.064461), (-6.466419,13.579473), (-8.083023,12.60952), (-1.939926,2.90989), (-0.808302,8.568), (0.386095,12.08023), (112.57834,26.32133)]

oregonfigure x = oregon #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (148.72185 ^& (-175.53152))

pa = fromOffsets . map r2 $ [(1.30842,-0.271), (2.32953,-1.25325), (1.21188,-2.48307), (1.61661,-2.26325), (3.23321,-3.07156), (0.0,-0.8083), (-2.42491,-1.6166), (-3.55654,-2.42492), (-0.96996,-2.58657), (-2.74824,-0.32332), (-0.16166,-1.13163), (-0.8083,-2.74823), (2.26326,-1.13162), (0.16166,-2.42492), (-1.2933,-1.29329), (0.16166,-1.61661), (1.93994,-3.07155), (0.0,-3.07156), (2.69763,-2.64588), (-0.92028,-0.67498), (-2.52408,-0.19291), (-2.29449,-1.93992), (-1.54992,-6.11606), (-3.50458,0.10052), (-2.45523,-2.70333), (-18.09099,4.19777), (-43.00178,8.72969), (-8.89135,1.45494), (-0.62067,-6.52139), (-5.36253,5.06765), (-1.29329,0.48498), (-4.20229,3.00889), (2.91076,19.13745), (2.48166,9.72936), (3.5718,19.26149), (3.26931,-0.63768), (11.94358,-1.50247), (37.92663,-7.6652), (14.87621,-2.82332), (8.30035,-1.62236), (0.26711,-0.23853), (2.1016,-1.61662), (2.10158,-0.68084)]

penfigure x = pa #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (825.1237 ^& (-224.69205))

ri = fromOffsets . map r2 $ [ (-3.69579,-14.95599), (6.26928,-1.84514), (2.19113,1.92712), (3.30649,4.32065), (2.6879,4.40209), (-2.99934,1.62479), (-1.29328,-0.16166), (-1.13162,1.77827), (-2.42491,1.93992), (-2.90986,0.96995)]

rifigure x = ri #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (874.07 ^& (-178.89536))

sc = fromOffsets . map r2 $[  (-1.77706,0.9695), (-2.58657,-1.29329), (-0.64664,-2.10159), (-1.29328,-3.55653), (-2.26326,-2.1016), (-2.58657,-0.64664), (-1.6166,-4.84981), (-2.74824,-5.98145), (-4.20317,-1.93994), (-2.1016,-1.93992), (-1.29328,-2.58657), (-2.10159,-1.93994), (-2.26325,-1.29328), (-2.26325,-2.90989), (-3.07155,-2.26324), (-4.52651,-1.77828), (-0.48498,-1.45494), (-2.4249,-2.90989), (-0.48499,-1.45496), (-3.39488,-5.17313), (-3.39487,0.16166), (-4.04152,-2.42492), (-1.29328,-1.29328), (-0.32332,-1.77827), (0.8083,-1.93992), (2.26325,-0.96998), (-0.51082,-2.28908), (5.7681,-2.33657), (9.1155,-4.589), (7.77473,-0.80831), (16.1144,-0.42248), (2.63825,1.87743), (1.6791,3.35822), (4.30235,-0.60998), (12.60953,-1.45496), (2.90989,0.80831), (12.60954,7.59806), (10.10808,8.12168), (-5.42117,5.45834), (-2.58657,6.1431), (-0.48498,6.30476), (-1.6166,0.8083), (-1.13163,2.74823), (-2.4249,0.64664), (-2.10159,3.55653), (-2.74823,2.74823), (-2.26324,3.39487), (-1.61661,0.8083), (-3.55653,3.39487), (-2.90989,0.16166), (0.96997,3.23321), (-5.01148,5.49646), (-2.10159,1.29328)]

scfigure x = sc #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (764.9433 ^& (-408.1649))

sd = fromOffsets . map r2 $[(-0.0474,-0.58087), (-2.89571,-4.84544), (1.86023,-4.71211), (1.49273,-5.88654), (-2.78187,-2.07971), (-0.38516,-2.74346), (0.7924,-2.55435), (3.18851,0.0152), (-0.12308,-5.00614), (-0.3333,-30.17425), (-0.61773,-3.76758), (-4.07232,-3.33093), (-0.98263,-1.67696), (-0.0625,-1.60882), (2.02212,-1.5294), (1.53222,-1.66567), (0.24496,-2.65679), (-58.25709,-1.60035), (-54.79921,-3.44909), (-5.32527,63.69119), (14.59027,0.9038), (19.94985,1.20561), (17.74305,0.92859), (23.77676,1.30358), (11.9827,-0.42464), (1.9663,2.24518), (5.19464,3.25335), (0.76389,0.72275), (4.54144,-1.45281), (6.54054,-0.61491), (1.6753,1.33627), (4.20451,1.59613), (2.94506,1.63583), (0.39898,1.48381), (1.03949,2.24088), (2.23737,-0.20136)]

sdfigure x = sd #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (476.44687 ^& (-204.02465))


tnPoints :: [R2]
tnPoints = map r2 $[ (-51.89309,5.01149), (-15.75956,1.77826), (-4.6212,0.51271), (-3.86835,-0.0277), (-0.22097,4.10083), (-8.18538,0.26401), (-6.95141,0.64664), (-8.09083,-0.12386), (-1.41378,7.07286), (-1.69623,5.48005), (-3.29317,2.75084), (-1.34874,4.38106), (-0.32332,2.58657), (-4.04152,2.26324), (1.45494,3.55654), (-0.96996,4.36484), (-0.96838,0.78965), (108.15855,-10.40755), (0.40327,-3.95494), (1.81073,-1.49039), (2.83415,-0.74945), (0.67193,-3.71698), (4.0986,-2.70496), (4.04693,-1.49403), (4.08358,-3.57033), (4.43609,-2.02546), (0.52126,-3.06735), (4.0646,-3.98499), (0.5508,-0.11417)]

tnTrail :: Trail R2
tnTrail = fromOffsets tnPoints

tnLineSegs :: [Segment Closed R2]
tnLineSegs = trailSegments tnTrail

tnx2 = r2 (0.83955,1.13162)
[tnc1, tnc2] = map r2 [(0,0),(0.0312,1.13162)]

tnbezierSegment :: Segment Closed R2
tnbezierSegment  = bezier3 tnc1 tnc2 tnx2

tnx3 = r2 (1.93993,0.35457)
[tnc3, tnc4] = map r2 $[(0.8083,0), (1.93993,0.35457)]

tnbezierSegment1 :: Segment Closed R2
tnbezierSegment1 = bezier3 tnc3 tnc4 tnx3

tnPoints1 :: [R2]
tnPoints1 = map r2 $[ (2.26325,-3.58779), (2.07034,-0.64664), (2.27511,0.29521), (1.59831,-3.53286), (2.95525,-2.64391), (0.42168,-1.93911), (0.30896,-3.71115), (-2.14655,-0.19977), (-2.60168,2.02833), (-6.99331,0.0291), (-18.35929,2.38682), (-8.06109,1.9082)]

tnTrail1 :: Trail R2
tnTrail1 = fromOffsets tnPoints1

tnLineSegs1 :: [Segment Closed R2]
tnLineSegs1 = trailSegments tnTrail1

tnCombSegs :: [Segment Closed R2]
tnCombSegs = tnLineSegs ++ [tnbezierSegment, tnbezierSegment1] ++ tnLineSegs1

tnCombLine :: Trail' Line R2
tnCombLine = lineFromSegments tnCombSegs

tngluedLine :: Trail' Loop R2
tngluedLine = glueLine tnCombLine

tnStrokedLine :: Renderable (Path R2) b => Diagram b R2
tnStrokedLine = strokeLoop tngluedLine

--tnfigure :: Renderable (Path R2) b => Diagram b R2
tnfigure x = tnStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate  (696.67786 ^& (-318.25412))

tx = fromOffsets . map r2 $[ (22.69079,1.08594), (31.09269,1.14312), (-2.33461,23.4558), (-0.29676,18.15352), (0.0681,2.08179), (4.34383,3.81843), (1.98665,1.44716), (1.18421,-0.55969), (0.37337,-1.81772), (1.14032,1.80362), (2.11164,0.0439), (-0.003,-1.44709), (1.66994,0.96727), (1.1387,0.40887), (-0.35927,3.96765), (4.08819,0.0935), (2.92532,1.19717), (3.95474,0.52538), (2.38138,2.07898), (2.1241,-2.07617), (3.72494,0.61491), (2.22091,3.22494), (1.07496,0.32096), (-0.16047,1.96527), (2.21361,0.79229), (2.33015,-2.0548), (2.13302,0.61492), (2.22938,0.0355), (0.93307,2.43544), (6.32809,2.11445), (1.59305,-0.76693), (1.48947,-4.17771), (0.34072,0.0), (0.90649,0.0816), (1.22905,2.06863), (3.92988,0.66528), (3.337,1.12288), (3.42563,1.19597), (1.84058,-0.975), (0.71376,-2.51484), (4.45322,0.0442), (1.80874,0.93078), (2.79925,-2.10651), (1.10364,0.0442), (0.85104,1.60507), (4.05472,0.0), (1.51887,-2.02862), (1.86737,0.40724), (1.94603,2.40328), (3.52057,2.04415), (2.85876,0.80981), (1.51362,0.79984), (2.4467,1.99732), (3.04304,-1.32779), (2.69109,1.13888), (0.56381,6.10594), (-0.0398,9.70217), (0.68586,9.53401), (0.70218,3.60511), (2.67533,4.41986), (0.89818,4.95073), (4.21595,5.53802), (0.19602,3.14494), (0.74637,0.78584), (-0.73007,8.38007), (-2.8721,5.0065), (1.53297,2.15287), (-0.63008,2.33808), (-0.66957,7.40432), (-1.50432,3.338), (0.29488,3.50235), (-5.66488,1.58518), (-9.86129,4.5265), (-0.96996,1.93992), (-2.58657,1.93993), (-2.10158,1.45494), (-1.29329,0.8083), (-5.65811,5.3348), (-2.74823,2.10159), (-5.3348,3.2332), (-5.65811,2.42491), (-6.30476,3.39487), (-1.77826,1.45495), (-5.81978,3.55653), (-3.39487,0.64664), (-3.87985,5.49645), (-4.04151,0.32333), (-0.96997,1.93992), (2.26325,1.93993), (-1.45495,5.49645), (-1.29328,4.5265), (-1.13162,3.87985), (-0.8083,4.52649), (0.8083,2.42491), (1.77826,6.9514), (0.96997,6.14309), (1.77826,2.74823), (-0.96996,1.45495), (-3.07155,1.93992), (-5.65812,-3.87985), (-5.49645,-1.13162), (-1.29329,0.48498), (-3.23321,-0.64664), (-4.20317,-3.07155), (-5.17313,-1.13162), (-7.59805,-3.39487), (-2.10158,-3.87986), (-1.29329,-6.46641), (-3.2332,-1.93993), (-0.64665,-2.26325), (0.64665,-0.64664), (0.32332,-3.39487), (-1.29329,-0.64664), (-0.64664,-0.96996), (1.29328,-4.36484), (-1.6166,-2.26324), (-3.23321,-1.29329), (-3.39487,-4.36483), (-3.55653,-6.62808), (-4.20317,-2.58657), (0.16166,-1.93992), (-5.3348,-12.2862), (-0.8083,-4.20317), (-1.77826,-1.93992), (-0.16166,-1.45495), (-5.98144,-5.33479), (-2.58657,-3.07155), (0.0,-1.13163), (-2.58657,-2.10158), (-6.78974,-1.13163), (-7.43638,-0.64664), (-3.07155,-2.26324), (-4.52649,1.77826), (-3.55653,1.45495), (-2.26325,3.2332), (-0.96996,3.7182), (-4.36483,6.14309), (-2.42491,2.42491), (-2.58657,-0.96996), (-1.77826,-1.13163), (-1.93993,-0.64664), (-3.87985,-2.26324), (0.0,-0.64665), (-1.77826,-1.93992), (-5.17314,-2.10159), (-7.43638,-7.7597), (-2.26325,-4.68815), (0.0,-8.08303), (-3.23321,-6.46642), (-0.48498,-2.74822), (-1.6166,-0.96997), (-1.13163,-2.10158), (-5.01147,-2.10159), (-1.29328,-1.6166), (-7.11307,-7.92137), (-1.29328,-3.23321), (-4.68816,-2.26325), (-1.45495,-4.36487), (-2.58659,-2.90987), (-1.93991,-0.48496), (-0.64923,-4.67764), (8.00187,0.68589), (29.03499,2.74345), (29.03508,1.60036), (2.23353,-19.46182), (3.88655,-55.55502), (1.60039,-18.74732), (1.37174,0.0286)]

txfigure x = tx #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (361.46423 ^& (-330.57358))

tx1 = fromOffsets . map r2 $[(-0.56581,-7.11308), (-2.74824,-7.19392), (-0.56582,-7.03225), (1.53578,-8.24471), (3.31406,-6.87059), (3.4757,-5.41565), (3.1524,-3.55655), (0.64664,0.2425), (-4.769,6.6281), (-4.36484,6.54728), (-2.02077,6.62809), (-0.32332,5.17316), (0.88913,6.14312), (2.58658,7.19392), (0.48498,5.17314), (0.16166,1.45496), (-0.88913,0.24248)]

txfigure1 x = tx1 #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (460.49357999999995 ^& (-560.23631))

ut = fromOffsets . map r2 $[(-83.74903,-11.87225), (20.58761,-112.54135), (46.78031,8.74514), (-1.4848,10.63042), (-2.31162,13.17266), (7.80769,0.92837), (16.40652,1.80479), (8.21097,0.85564), (-12.24765,88.27658)]

utfigure x = ut #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (259.49835 ^& (-310.1051))

vt = fromOffsets . map r2 $ [ (0.3167,-5.34563), (-2.89071,-10.78417), (-0.64664,-0.32332), (-2.9099,-1.29329), (0.8083,-2.90989), (-0.8083,-2.10159), (-2.70005,-4.63998), (0.96997,-3.87986), (-0.80831,-5.17315), (-2.42491,-6.46644), (-0.80557,-4.92251), (26.41936,-6.73182), (0.3087,5.52221), (1.91626,2.74223), (0.0,4.04152), (-3.70715,5.05799), (-2.58657,1.14267), (-0.011,1.12057), (1.30997,1.51912), (-0.31093,8.09797), (-0.60943,9.25886), (-0.22795,5.55694), (0.96996,1.29329), (-0.16166,4.57069), (-0.48498,1.68989), (1.01418,0.72716), (-7.43755,1.50671), (-4.50174,0.72383)]

vtfigure x = vt #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (844.48413 ^& (-154.0579))

va = fromOffsets . map r2 $ [(-0.14391,-1.94703), (6.45343,-2.54988), (-0.77041,3.21784), (-2.91995,3.77911), (-0.41809,4.58582), (0.46175,3.39044), (-1.82797,4.97816), (-2.16427,1.91614), (-1.47034,-4.64081), (0.44589,-5.44911), (1.587,-4.18307), (0.76687,-3.09761)]

vafigure x = va #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate  (831.63885 ^& (-266.0689)) 


vaPoints :: [R2]
vaPoints = map r2 $[(-58.17418,12.57543), (-37.42697,5.27907), (-6.67833,-0.37518), (-2.58525,1.92638), (-7.33913,0.22069), (-8.38211,0.97767), (-10.91496,1.61462), (10.46943,-5.6112), (-0.0131,-2.07493), (1.52005,-2.14613), (10.55378,-11.50143), (3.94672,4.47746), (3.78301,0.96398), (2.54346,-1.14032), (2.23722,-1.31116), (2.53661,1.34352), (3.91417,-1.42776), (1.87673,-4.55634), (2.60092,0.54002), (2.85524,-2.13125), (1.79927,0.4936), (2.82721,-3.67657), (0.34825,-2.08311), (-0.96366,-1.27557), (1.00277,-1.86663), (5.27427,-12.27715), (0.61677,-5.73508), (1.22889,-0.52354), (2.17853,2.44287), (3.93586,-0.30117), (1.92921,-7.57363), (2.79399,-0.56086), (1.04975,-2.74107), (2.57982,-2.34688), (2.77183,-5.69519), (0.0849,-5.06755), (9.82151,3.82282)]

vaTrail :: Trail R2
vaTrail = fromOffsets vaPoints

vaLineSegs :: [Segment Closed R2]
vaLineSegs = trailSegments vaTrail

vax2 = r2 (0.83288,-5.04915)
[vac1, vac2] = map r2 [(0.68085,0.34042),(0.83288,-5.04915)]

vabezierSegment :: Segment Closed R2
vabezierSegment  = bezier3 vac1 vac2 vax2

vaPoints1 :: [R2]
vaPoints1 = map r2 $[ (3.65256,1.59833), (0.0683,2.93816), (5.78425,1.29949), (2.13295,1.1762), (1.65992,2.05569), (-0.65455,3.64867), (-1.94744,2.59098), (0.10985,2.05907), (0.58896,1.85291), (4.97875,1.26843), (4.45127,3.99-2), (3.06883,0.95864), (1.94351,0.3093), (0.71481,3.08846), (3.19044,0.40253), (0.86807,1.20002), (-0.43949,4.69008), (1.37473,1.10255), (-0.47895,1.93039), (1.22941,0.78977), (-0.2218,1.3846), (-2.69399,-0.0949), (0.089,1.61552), (2.28099,1.54287), (0.12154,1.4119), (1.77311,1.78538), (0.49179,2.52413), (-2.55304,1.38131), (1.57222,1.4943), (5.80102,-1.68583), (3.60762,6.01193)]

vaTrail1 :: Trail R2
vaTrail1 = fromOffsets vaPoints1

vaLineSegs1 :: [Segment Closed R2]
vaLineSegs1 = trailSegments vaTrail1

vaCombSegs :: [Segment Closed R2]
vaCombSegs = vaLineSegs ++ [vabezierSegment] ++ vaLineSegs1
    
vaCombLine :: Trail' Line R2
vaCombLine = lineFromSegments vaCombSegs

vagluedLine :: Trail' Loop R2
vagluedLine = glueLine vaCombLine

vaStrokedLine :: Renderable (Path R2) b => Diagram b R2
vaStrokedLine = strokeLoop vagluedLine

--vafigure1  :: Renderable (Path R2) b => Diagram b R2
vafigure1 x = vaStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate (834.97904 ^& (-294.37028))

wa = fromOffsets . map r2 $[(4.36483,1.4549443), (9.69963,2.7482283), (8.568,1.939925), (20.0459,5.658117), (22.95579,5.658116), (15.22312,3.207173), (-13.63236,63.58581), (-12.445,-3.525318), (-15.50801,-3.570679), (-15.22929,0.03324), (-0.45557,-1.344699), (-5.59922,2.179293), (-4.59543,-0.736744), (-2.14697,-1.584054), (-1.31321,0.657976), (-4.73566,-0.140243), (-1.69836,-1.349633), (-5.26304,-2.112303), (-0.734971,0.146918), (-4.389122,-1.524448), (-1.893298,1.817379), (-6.265906,-0.298733), (-5.925698,-4.125702), (0.778957,-0.932763), (0.121223,-7.677452), (-2.281999,-3.839701), (-4.115208,-0.60704), (-0.67741,-2.510616), (-2.275512,-0.456932), (-3.554948,1.230576), (-2.263247,-3.219247), (0.323321,-2.909889), (2.748228,-0.323321), (1.616605,-4.041511), (-2.586568,-1.131624), (0.161661,-3.718191), (4.364833,-0.646641), (-2.748228,-2.748228), (-1.454945,-7.113061), (0.646642,-2.909888), (0.0,-7.921363), (-1.778265,-3.23321), (2.263247,-9.376307), (2.101586,0.484981), (2.424907,2.909889), (2.748228,2.586567), (3.233209,1.939926), (4.526493,2.101586), (3.071551,0.646642), (2.909889,1.454944), (3.394873,0.969963), (2.263246,-0.16166), (0.0,-2.424908), (1.293284,-1.131623), (2.101582,-1.293284), (0.32333,1.131624), (0.32332,1.778265), (-2.263251,0.484981), (-0.323321,2.101586), (1.778262,1.454945), (1.13163,2.424907), (0.64664,1.939925), (1.45494,-0.16166), (0.16166,-1.293284), (-0.96996,-1.293284), (-0.48498,-3.233209), (0.8083,-1.778265), (-0.64664,-1.454944), (0.0,-2.263247), (1.77827,-3.55653), (-1.13163,-2.586568), (-2.42491,-4.849814), (0.32333,-0.8083023), (1.13162,-0.8083024)]

wafigure x = wa #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (102.07324 ^& (-7.6117735))

waPoints :: [R2]
waPoints = map r2 $[(2.020764,-0.16166), (0.484982,1.374119), (1.535779,-1.616615), (2.344082,0.0), (0.808303,1.535779), (-1.53578,1.69744), (0.646652,0.808313), (-0.727477,2.020761), (-1.374119,0.404146)]

waTrail :: Trail R2
waTrail = fromOffsets waPoints

waLineSegs :: [Segment Closed R2]
waLineSegs = trailSegments waTrail

wax2 = r2 (-0.889138,-0.242485)
[wac1, wac2] = map r2 [(0,0),(-0.889138,0.08084)]

wabezierSegment :: Segment Closed R2
wabezierSegment  = bezier3 wac1 wac2 wax2

wax3 = r2 (1.454955,-2.586578)
[wac3, wac4] = map r2 [(0,-0.323321),(1.454955,-2.586578)]

wabezierSegment1 :: Segment Closed R2
wabezierSegment1  = bezier3 wac3 wac4 wax3

wa1Points :: [R2]
wa1Points = map r2 $[ (-1.69744,-0.565817), (-0.323321,1.454954), (-0.727478,0.646642), (-1.535782,-2.263257), (-0.484982,-2.505742)]

wa1Trail :: Trail R2
wa1Trail = fromOffsets wa1Points

wa1LineSegs :: [Segment Closed R2]
wa1LineSegs = trailSegments wa1Trail

waCombSegs :: [Segment Closed R2]
waCombSegs = waLineSegs ++ [wabezierSegment, wabezierSegment1] ++ wa1LineSegs

waCombLine :: Trail' Line R2
waCombLine = lineFromSegments waCombSegs

wagluedLine :: Trail' Loop R2
wagluedLine = glueLine waCombLine

waStrokedLine :: Renderable (Path R2) b => Diagram b R2
waStrokedLine = strokeLoop wagluedLine

--wafigure1 :: Renderable (Path R2) b => Diagram b R2
wafigure1 x = waStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate (92.616548 ^& (-13.5907385))

wvPoints :: [R2]
wvPoints = map r2 $[  (1.11201,4.94453), (1.08344,6.03133), (2.13029,-2.58034), (2.26324,-3.07156), (2.53838,-0.61555), (1.45495,-1.45494), (1.77827,-2.58657), (1.44498,0.64664), (2.90989,-0.32332), (2.58658,-2.10159), (2.00689,-1.45326), (1.84523,-0.48499), (1.30392,1.01647), (3.64325,1.82163), (1.93993,1.77827), (1.37412,1.29328), (-0.76172,5.55494), (-5.83491,-2.54122), (-4.24525,-1.62202), (-0.10114,5.17843), (-2.74764,5.53673), (-2.53003,2.42666), (-1.19209,2.74939), (-2.64358,0.5001), (-0.89784,3.60188), (-1.04323,3.94967), (-3.96824,0.34074), (-2.32373,-2.43888), (-1.07115,0.55941), (-0.63268,5.4697), (-1.35029,3.5345), (-4.9584,10.95497), (0.89669,1.1607), (-0.20586,1.90854), (-2.80869,3.88447), (-1.8085,-0.54429), (-2.96805,2.15974), (-2.54238,-0.57221), (-1.99923,4.55557)]

wvTrail :: Trail R2
wvTrail = fromOffsets wvPoints

wvLineSegs :: [Segment Closed R2]
wvLineSegs = trailSegments wvTrail

wvx2 = r2 (-3.92291,1.36772)
[wvc1, wvc2] = map r2 [(0,0),(-3.25931,1.43022)]

wvbezierSegment :: Segment Closed R2
wvbezierSegment  = bezier3 wvc1 wvc2 wvx2

wvx3 = r2 (-2.4691,-1.2491)
[wvc3, wvc4] = map r2 [(-0.16051,-0.0151),(-2.4691,-1.2491)]

wvbezierSegment1 :: Segment Closed R2
wvbezierSegment1  = bezier3 wvc3 wvc4 wvx3

wvPoints1 :: [R2]
wvPoints1 = map r2 $[ (-2.33652,1.37937), (-2.4098,1.0444), (-3.74469,-0.88912), (-1.1214,-1.16828), (-2.19222,-3.02336), (-3.14259,-1.98812), (-1.71157,-3.62324), (-4.28488,-3.46819), (-0.64665,-2.26325), (-2.58657,-1.45495), (-0.80831,-1.6166), (-0.24249,-5.25398), (2.18242,-0.0808), (1.93994,-0.8083), (0.16166,-2.74823), (1.6166,-1.45495), (0.16166,-5.01148), (0.96996,-3.87986), (1.29329,-0.64664), (1.29328,1.13162), (0.48499,1.77827), (1.77827,-0.96997), (0.48498,-1.6166), (-1.13162,-1.77827), (0.0,-2.42491), (0.96996,-1.29329), (2.26325,-3.39487), (1.29328,-1.45494), (2.1016,0.48498), (2.26324,-1.61662), (3.07155,-3.39487), (2.26326,-3.87986), (0.32332,-5.65811), (0.48498,-5.01149), (0.0,-4.68816), (-1.13162,-3.07155), (0.96996,-1.45496), (1.28348,-1.29328), (3.49125,19.82712), (4.63101,-0.75115), (12.42832,-1.79965)]

wvTrail1 :: Trail R2
wvTrail1 = fromOffsets wvPoints1

wvLineSegs1 :: [Segment Closed R2]
wvLineSegs1 = trailSegments wvTrail1

wvCombSegs :: [Segment Closed R2]
wvCombSegs = wvLineSegs ++ [wvbezierSegment, wvbezierSegment1] ++ wvLineSegs1

wvCombLine :: Trail' Line R2
wvCombLine = lineFromSegments wvCombSegs

wvgluedLine :: Trail' Loop R2
wvgluedLine = glueLine wvCombLine

wvStrokedLine :: Renderable (Path R2) b => Diagram b R2
wvStrokedLine = strokeLoop wvgluedLine

--wvfigure :: Renderable (Path R2) b => Diagram b R2
wvfigure x = wvStrokedLine # scaleY (-1) #fc x #lc white #lw 0.5  #translate (761.1855 ^& (-238.96732))

wi = fromOffsets . map r2 $[ (-0.0667,-3.15742), (-1.17911,-4.5265), (-0.64664,-6.14309), (-1.13162,-2.42491), (0.96996,-3.07155), (0.8083,-2.90989), (1.45495,-2.58656), (-0.64665,-3.39487), (-0.64664,-3.55653), (0.48498,-1.77827), (1.93993,-2.42491), (0.16166,-2.74823), (-0.8083,-1.29328), (0.64664,-2.58657), (-0.45252,-4.17071), (2.74823,-5.65811), (2.90989,-6.78974), (0.16166,-2.26325), (-0.32332,-0.96996), (-0.80831,0.48498), (-4.20317,6.30476), (-2.74823,4.04151), (-1.93992,1.77827), (-0.8083,2.26324), (-1.95495,0.8083), (-1.13162,1.93993), (-1.45495,-0.32332), (-0.16166,-1.77827), (1.29329,-2.4249), (2.10158,-4.68816), (1.77827,-1.6166), (0.99083,-2.35785), (-2.56045,-1.90134), (-1.97482,-10.36699), (-3.54747,-1.34198), (-1.94626,-2.30833), (-12.12971,-2.72164), (-2.87589,-1.01205), (-8.21312,-2.16729), (-7.91792,-1.15875), (-3.76516,-5.13067), (-0.7504,0.55401), (-1.19791,-0.16166), (-0.64665,-1.13162), (-1.33401,0.29655), (-1.13163,0.16166), (-1.77826,0.96996), (-0.96997,-0.64664), (0.64665,-1.93993), (1.93992,-3.07155), (1.13162,-1.13162), (-1.93992,-1.45494), (-2.10159,0.8083), (-2.90989,1.93992), (-7.43638,3.23321), (-2.90989,0.64664), (-2.90988,-0.48498), (-0.98173,-0.87825), (-2.1167,2.83518), (-0.22862,2.74347), (0.0,8.45903), (-1.14312,1.60037), (-5.25832,3.88657), (-2.28622,5.94419), (0.45724,0.22862), (2.51485,2.05761), (0.68586,3.20072), (-1.82898,3.20071), (0.0,3.88659), (0.45725,6.63005), (2.97209,2.9721), (3.42935,0.0), (1.82898,3.20072), (3.42933,0.45724), (3.88659,5.71557), (7.0873,4.11521), (2.0576,2.74347), (0.9145,7.43024), (0.68586,3.31502), (2.28623,1.60036), (0.22862,1.37174), (-2.0576,3.42933), (0.22862,3.20073), (2.51485,3.88658), (2.51485,1.14311), (2.97209,0.45724), (1.34234,1.38012), (45.29836,-2.66945)]

wifigure x = wi #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (615.0659 ^& (-197.36867))

wy = fromOffsets . map r2 $[  (-106.7426,-13.45706), (-14.08348,88.45803), (113.26461,13.58549), (7.56147,-88.58646)]

wyfigure x = wy #scaleY (-1)  # strokeLoop #lc white #fc x #lw 0.5 #translate (360.37668 ^& (-143.27586))

lgdcolor :: (Floating a, Ord a) => a -> Colour a
lgdcolor weight = blend weight red yellow
    
blendweights :: (Enum t, Fractional t) => [t]
blendweights = [0.0, 0.025 .. 1.5]

legendcolors :: (Enum a, Floating a, Ord a) => [Colour a]
legendcolors = map lgdcolor blendweights 
             
s = square 10

textlow = stroke (textSVG  "0%" 20) #fc black <> rect 30 5 #lw 0 
textmid = stroke (textSVG  "50%" 20) #fc black <> rect 550 5 #lw 0
texthigh = stroke (textSVG  "100%" 20) #fc black#fc grey <> rect 30 5 #lw 0

--textlow = stroke (textSVG "3%" 1) #fc black
--textmid =  stroke (textSVG "7%" 1) #fc black
--texthigh =  stroke (textSVG "10%" 1) #fc black <> rect 30 30 #lw 0

getTextTitle :: IO [Char]
getTextTitle = do
    csvFilePath:xs <- getArgs
    let replacedPath = replaceColon csvFilePath
    return replacedPath


-- textTitle :: Renderable Text b => String -> Diagram b R2

textTitle x = stroke (textSVG x 30) #fc black # centerXY  <> rect 250 50 # centerXY
--textTitle x = stroke (textSVG x 30) # fc black # alignY (-10.0) # alignX (-5.0) <> rect 1 1 --#lc black

--textTitle x = stroke (textSVG' $ TextOpts x lin INSIDE_WH KERN False 200 30) # fc black # --alignY (-10.0) # alignX (-5.0) <> rect 200 50 #lc black

legendstuff = hcat $ zipWith fc legendcolors (repeat s)

horizontalText = hcat 
                    [
                     textlow 
                    , textmid
                    , texthigh
                    ]

lgdstuffblah  = vcat' (set sep 10 with)
                    [ 
                        legendstuff # alignX (-1.7)
                    ,   horizontalText # alignX (-1.7)
                    ]


headerstuff x  = vcat'  (set sep 40 with)
                    [ 
                    textTitle x # alignX (-4.0) #alignY (-5.0)
                    , lgdstuffblah
                    ]
                                        


