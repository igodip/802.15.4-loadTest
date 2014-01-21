COMPONENT=SnifferAppC
CFLAGS += -DIEEE154_SCAN_DISABLED -DIEEE154_BEACON_SYNC_DISABLED -DIEEE154_BEACON_TX_DISABLED -DIEEE154_RXENABLE_DISABLED -DIEEE154_ASSOCIATION_DISABLED -DIEEE154_DISASSOCIATION_DISABLED -DIEEE154_COORD_REALIGNMENT_DISABLED -DIEEE154_COORD_BROADCAST_DISABLED


BUILD_EXTRA_DEPS += seriallisten15-4
CLEAN_EXTRA = seriallisten15-4.o seriallisten15-4

seriallisten15-4: seriallisten15-4.o
	gcc -o $@ $< $(TOSDIR)/../support/sdk/c/sf/libmote.a

seriallisten15-4.o: seriallisten15-4.c
	gcc -c -o $@ -I$(TOSDIR)/../support/sdk/c/sf -I$(TOSDIR)/lib/serial -I$(TOSDIR)/types $<


#Serial Printf
CFLAGS += -DDEBUG_SERIAL
CFLAGS += -I$(TOSDIR)/lib/printf
PFLAGS += -DPRINTF_BUFFER_SIZE=1000


# To use the TKN15.4 MAC instead of a platform's default MAC protocol first
# include the TinyOS "Makerules" file as usual ...
include $(MAKERULES)
# ... and then include the TKN15.4 "Makefile.include" file. That's all.
# Hint: type "make <platform> verbose" to see the aggregate include path.
include $(TOSDIR)/lib/mac/tkn154/Makefile.include
