import librosa

def load_audio(file_path):
    """Load an audio file."""
    y, sr = librosa.load(file_path)
    return y, sr

def extract_notes(y, sr):
    """Extract notes (pitches) from an audio signal."""
    pitches, _ = librosa.piptrack(y=y, sr=sr)
    notes = []
    for frame in pitches.T:
        pitch = frame.max()
        if pitch > 0:  # Exclude silence
            notes.append(librosa.hz_to_midi(pitch))
    return notes
