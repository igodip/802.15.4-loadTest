#ifndef MAC_802154P_H
#define MAC_802154P_H

namespace ieee802154{
	enum FCF {
		BEACON,
		DATA,
		ACK,
		OTHER
		
	};

	class Mac802154P {
		
		private:
			FCF fcf;
		
	};
}
#endif
