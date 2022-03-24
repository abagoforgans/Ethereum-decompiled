contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor1;
uint8 stor4;
uint8 storBC1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = 1
    storBC1 = 2
    if msg.sender == msg.sender:
        if code.data[9115 len 20] != 0:
            if 0 == address(stor1):
                call address(code.data[9103 len 32]).0xe001f841 with:
                     gas gas_remaining - 25050 wei
                    args 'dex', this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    uint256(stor1) = code.data[9103 len 32] or Mask(96, 160, uint256(stor1))
            else:
                call address(stor1).0x32a16f4e with:
                     gas gas_remaining - 25050 wei
                    args 'dex'
                require ext_call.success
                if not ext_call.return_data[0]:
                    call address(code.data[9103 len 32]).0xe001f841 with:
                         gas gas_remaining - 25050 wei
                        args 'dex', this.address
                    require ext_call.success
                    if ext_call.return_data[0]:
                        uint256(stor1) = code.data[9103 len 32] or Mask(96, 160, uint256(stor1))
    return code.data[484 len 8619]
}



// =====================  Runtime code  =====================


#
#  - placeOrder(uint256 arg1, uint256 arg2, uint256 arg3)
#  - takeOrder(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
address stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
mapping of struct sub_416b9047;
uint8 stor4;
array of address stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor9C9;
uint256 stor9CA;
uint256 stor9CB;
array of uint256 stor2508;
uint256 storBC0;
uint8 storBC1;
array of address stor3010;
array of uint256 stor3011;
array of uint256 stor3012;
array of uint256 stor3013;
array of uint256 stor3014;
uint256 stor1586;
big512 stor1586;
uint256 stor1587;
big512 stor1587;
uint256 stor1588;
array of uint256 stor5513;
uint256 stor177D;

function sub_416b9047(?) payable {
    return sub_416b9047[address(this.address)].field_0
}

function balanceOfAll(address arg1) payable {
    return sub_416b9047[address(arg1)].field_0, 
           sub_416b9047[address(arg1)].field_256,
           sub_416b9047[address(arg1)].field_512,
           sub_416b9047[address(arg1)].field_768
}

function _fallback() payable {
  stop
}

function orderBookLength() payable {
    return stor9C9, uint256(stor1586)
}

function depositEther() payable {
    sub_416b9047[address(msg.sender)].field_0 += msg.value
}

function getAskOrderBookStats() payable {
    return Mask(512, 0, stor1586), Mask(512, 0, stor1587), stor9CB, stor1588
}

function withdrawEther(uint256 arg1) payable {
    if sub_416b9047[address(msg.sender)].field_0 < arg1:
    sub_416b9047[address(msg.sender)].field_0 -= arg1
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
}

function getOrderBook(uint256 arg1, uint256 arg2) payable {
    if arg1 != 1:
        if 0 == uint256(stor1586):
            return 0
        require var74002 < 100
        # nil
    else:
        if 0 == stor9C9:
            return 0
        require var74002 < 100
        # nil
}

function addNewTokens(uint256 arg1) payable {
    call address(stor1).0x21f8a721 with:
         gas gas_remaining - 25050 wei
        args 0x6465786c69640000000000000000000000000000000000000000000000000000
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        call address(stor1).0x21f8a721 with:
             gas gas_remaining - 25050 wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0x9b5254eb with:
             gas gas_remaining - 25050 wei
            args address(this.address), arg1
}

function RewardOrder(uint256 arg1, uint256 arg2) payable {
    call address(stor1).0x21f8a721 with:
         gas gas_remaining - 25050 wei
        args 0x6465786c69640000000000000000000000000000000000000000000000000000
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        require arg1 < 500
        stor6[arg1] -= arg2
        sub_416b9047[stor5[arg1]].field_512 += arg2
        sub_416b9047[stor5[arg1]].field_0 += arg2 * stor7[arg1] / 2
        sub_416b9047[stor5[arg1]].field_256 += -1 * arg2 * stor7[arg1]
        sub_416b9047[this.address].field_0 = (arg2 * stor7[arg1]) - (arg2 * stor7[arg1] / 2) + sub_416b9047[this.address].field_0
}

function unsetCoordinator() payable {
    if address(stor1) == msg.sender:
        call address(stor1).0x21f8a721 with:
             gas gas_remaining - 25050 wei
            args 0x746f6b656e000000000000000000000000000000000000000000000000000000
        require ext_call.success
        uint256(stor2) = ext_call.return_data[0] or Mask(96, 160, uint256(stor2))
        address(stor1) = 0
    else:
        if msg.sender == stor0:
            call address(stor1).0x21f8a721 with:
                 gas gas_remaining - 25050 wei
                args 0x746f6b656e000000000000000000000000000000000000000000000000000000
            require ext_call.success
            uint256(stor2) = ext_call.return_data[0] or Mask(96, 160, uint256(stor2))
            address(stor1) = 0
}

function withdrawToken(uint256 arg1) payable {
    if sub_416b9047[address(msg.sender)].field_512 >= arg1:
        sub_416b9047[address(msg.sender)].field_512 -= arg1
        if address(stor1):
            call address(stor1).0x21f8a721 with:
                 gas gas_remaining - 25050 wei
                args 0x746f6b656e000000000000000000000000000000000000000000000000000000
            require ext_call.success
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining - 25050 wei
                args msg.sender, arg1
        else:
            require 0 == address(stor1)
            require address(stor2) != 0
            call address(stor2).0xa9059cbb with:
                 gas gas_remaining - 25050 wei
                args msg.sender, arg1
            require ext_call.success
}

function setCoordinator(address arg1) payable {
    if msg.sender == stor0:
        if arg1 != 0:
            if 0 == address(stor1):
                call arg1.0xe001f841 with:
                     gas gas_remaining - 25050 wei
                    args 0x6465780000000000000000000000000000000000000000000000000000000000, this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
            else:
                call address(stor1).0x32a16f4e with:
                     gas gas_remaining - 25050 wei
                    args 0x6465780000000000000000000000000000000000000000000000000000000000
                require ext_call.success
                if not ext_call.return_data[0]:
                    call arg1.0xe001f841 with:
                         gas gas_remaining - 25050 wei
                        args 0x6465780000000000000000000000000000000000000000000000000000000000, this.address
                    require ext_call.success
                    if ext_call.return_data[0]:
                        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function cancelOrder(uint256 arg1, uint256 arg2) payable {
    if 1 == arg1:
        require arg2 < 500
        if stor5[arg2] == msg.sender:
            storBC0++
            require storBC0 < 500
            stor9CC[storBC0] = arg2
            if 1 == stor9C9:
                stor9CA = 0
                stor9CB = 0
            else:
                require arg2 < 500
                if arg2 == stor9CA:
                    stor9CA = stor8[arg2]
                else:
                    if arg2 == stor9CB:
                        stor9CB = stor9[arg2]
                    else:
                        require stor9[arg2] < 500
                        stor8[stor9[arg2]] = stor8[arg2]
                        require arg2 < 500
                        require stor8[arg2] < 500
                        stor9[stor8[arg2]] = stor9[arg2]
            stor9C9--
            require arg2 < 500
            if stor4 != 1:
                sub_416b9047[address(msg.sender)].field_512 += stor6[arg2]
                sub_416b9047[address(msg.sender)].field_768 -= stor6[arg2]
            else:
                sub_416b9047[address(msg.sender)].field_0 += stor6[arg2] * stor7[arg2]
                sub_416b9047[address(msg.sender)].field_256 += -1 * stor6[arg2] * stor7[arg2]
            if 1 == stor4:
                call address(stor1).0x21f8a721 with:
                     gas gas_remaining - 25050 wei
                    args 0x6465786c69640000000000000000000000000000000000000000000000000000
                require ext_call.success
                call address(ext_call.return_data[0]).closeOrder(uint256 rg1) with:
                     gas gas_remaining - 25050 wei
                    args arg2
            require arg2 < 500
            stor5[arg2] = 0
            stor6[arg2] = 0
            stor7[arg2] = 0
            stor8[arg2] = 0
            stor9[arg2] = 0
    else:
        if 2 == arg1:
            require arg2 < 500
            if storBC2[arg2] == msg.sender:
                stor177D++
                require stor177D < 500
                stor1589[stor177D] = arg2
                if 1 == uint256(stor1586):
                    uint256(stor1587) = 0
                    stor1588 = 0
                else:
                    require arg2 < 500
                    if arg2 == uint256(stor1587):
                        uint256(stor1587) = storBC5[arg2]
                    else:
                        if arg2 == stor1588:
                            stor1588 = storBC6[arg2]
                        else:
                            require storBC6[arg2] < 500
                            storBC5[storBC6[arg2]] = storBC5[arg2]
                            require arg2 < 500
                            require storBC5[arg2] < 500
                            storBC6[storBC5[arg2]] = storBC6[arg2]
                uint256(stor1586)--
                require arg2 < 500
                if storBC1 != 1:
                    sub_416b9047[address(msg.sender)].field_512 += storBC3[arg2]
                    sub_416b9047[address(msg.sender)].field_768 -= storBC3[arg2]
                else:
                    sub_416b9047[address(msg.sender)].field_0 += storBC3[arg2] * storBC4[arg2]
                    sub_416b9047[address(msg.sender)].field_256 += -1 * storBC3[arg2] * storBC4[arg2]
                if 1 == storBC1:
                    call address(stor1).0x21f8a721 with:
                         gas gas_remaining - 25050 wei
                        args 0x6465786c69640000000000000000000000000000000000000000000000000000
                    require ext_call.success
                    call address(ext_call.return_data[0]).closeOrder(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args arg2
                require arg2 < 500
                storBC2[arg2] = 0
                storBC3[arg2] = 0
                storBC4[arg2] = 0
                storBC5[arg2] = 0
                storBC6[arg2] = 0
}



}
