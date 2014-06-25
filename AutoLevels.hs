module Colors where
import Statistics.Distribution.Normal
import Statistics.Distribution
import Statistics.Types
import qualified Data.Vector.Unboxed as V

autoLevels :: [Double] -> [Double]
autoLevels = V.toList . remapByNormal . V.fromList

remapByNormal :: Sample -> Sample
remapByNormal samples = result where
  displacement = 0.5 - mean dist 
  start        = mean dist - 4 * stdDev dist
  end          = mean dist + 4 * stdDev dist
  scale        = end - start
  
  dist = normalFromSample samples
  
  result = V.map ((scale*) . (displacement +)) samples

