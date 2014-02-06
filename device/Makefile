COMPONENT=TestDataAppC
CFLAGS += -DIEEE154_BEACON_TX_DISABLED 
CFLAGS += -I$(shell pwd)/..

#Serial Printf
#CFLAGS += -DDEBUG_SERIAL
#CFLAGS += -I$(TOSDIR)/lib/printf
#PFLAGS += -DPRINTF_BUFFER_SIZE=1000

# To use the TKN15.4 MAC instead of a platform's default MAC protocol first
# include the TinyOS "Makerules" file as usual ...
include $(MAKERULES)
# ... and then include the TKN15.4 "Makefile.include" file. That's all.
# Hint: type "make <platform> verbose" to see the aggregate include path.
include $(TOSDIR)/lib/mac/tkn154/Makefile.include

