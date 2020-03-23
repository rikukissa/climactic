import librosa
import numpy as np
import helpers.librosaHelper as librosaHelper

def getAmp(librosaPath, intervals):
  output = []

  # retrieve librosa file
  audio, sampleRate = librosaHelper.loadLibrosa(librosaPath)
  
  # iterate intervals and calculate mfccs 
  for idx, (start, end) in enumerate(intervals):
    # splice full audio into clip
    clip = audio[start * sampleRate : end * sampleRate]
    amplitude = np.mean(clip)
    # add to output
    output.append(amplitude)
  
  return np.array(output)
