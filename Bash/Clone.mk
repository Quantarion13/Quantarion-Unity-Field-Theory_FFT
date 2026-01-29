# 1. FORK & BUILD FFTW3 φ⁴³
git clone https://github.com/Quantarion13/Quantarion-Unity-Field-Theory_FFT.git
cd Quantarion-Unity-Field-Theory_FFT

# 2. PRODUCTION BUILD (FFTW3 Generator + φ⁴³)
./bootstrap.sh && ./configure --enable-openmp --enable-fftpack && make -j$(nproc)

# 3. DOCKER PRODUCTION DEPLOYMENT
docker build -f Dockerfile.fftw -t aqarion13/fftw-phi43:latest .
docker stack deploy -c docker-compose.fftw.yml quantarion-fft

# 4. FFT FIELD THEORY PRODUCTION
curl localhost:8080/fftw/temple-60x20x30
# → {"kaprekar_6174": true, "φ43_coherence": "ACHIEVED"}
