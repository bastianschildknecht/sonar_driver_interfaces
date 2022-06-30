# Data to change the configuration of an imaging sonar system which uses an array of
# multiple acoustic transducers to emit sound waves and measure the
# reflection of sound waves in order to generate an image.
# This message is not appropriate for simpler sonar systems like
# depth sounders or side-scan sonars.
# The fields of this message describe the requested configuration.
# The sonar system may choose to ignore some or all of these fields if
# the requested configuration is not supported. It may also choose to use
# a different similar configuration.

# Fire mode constants
uint8 FIRE_MODE_LOW_FREQUENCY = 1
uint8 FIRE_MODE_HIGH_FREQUENCY = 2

# Gamma correction constants
uint8 GAMMA_CORRECTION_NONE = 255
uint8 GAMMA_CORRECTION_LOW = 192
uint8 GAMMA_CORRECTION_MEDIUM = 127
uint8 GAMMA_CORRECTION_HIGH = 63

# Ping rate constants
uint8 PING_RATE_STANDBY = 0
uint8 PING_RATE_VERY_LOW = 2
uint8 PING_RATE_LOW = 5
uint8 PING_RATE_MEDIUM = 10
uint8 PING_RATE_HIGH = 15
uint8 PING_RATE_VERY_HIGH = 40

# Network speed limit constants
uint8 NET_SPEED_UNLIMITED = 255
uint8 NET_SPEED_VERY_HIGH = 192
uint8 NET_SPEED_HIGH = 127
uint8 NET_SPEED_MEDIUM = 63
uint8 NET_SPEED_LOW = 31
uint8 NET_SPEED_VERY_LOW = 10
uint8 NET_SPEED_LOWEST = 5



std_msgs/Header header      # Timestamp in the header is the time of message
                            # message transmission.

uint8 fire_mode             # The mode of the sonar system.
                            # 1: Low frequency
                            # 2: High frequency

uint8 ping_rate             # The rate at which the sonar system should
                            # sample [Hz].

float64 range               # The requested range [m].

float64 gain                # The gain of the sonar system [%].

bool gain_assist            # Whether the system should assist in the
                            # gain setting.

uint8 gamma                 # The gamma correction of the sonar system.
                            # 0 and 255 are gamma 1.0.
                            # 127 is gamma 0.5.

float64 speed_of_sound      # The speed of sound [m/s]

float64 salinity            # The salinity of the water [ppt]

uint8 net_speed_limit       # The network speed limit [Mbps].
                            # 0 or 255 means no limit.
