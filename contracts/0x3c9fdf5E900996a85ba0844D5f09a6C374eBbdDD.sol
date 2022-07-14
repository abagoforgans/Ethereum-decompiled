contract main {




// =====================  Runtime code  =====================


const sub_1bcccdf7(?) = 5

const sub_48ddb0dd(?) = 10^18


address buyerAddress;
uint256 stor0;
address sellerAddress;
uint256 stor1;
uint256 market;
uint256 sub_037b9c17;
uint256 sub_7185b30c;
uint256 sub_22e20d2a;
uint256 strikePrice;
uint256 sub_c93c88d7;
uint256 sub_6a8100b2;
uint256 sub_9dec1430;
uint256 sub_2d4dce7d;
uint256 sub_1bdfca01;
uint256 sub_6182fab3;
uint256 sub_78561939;
uint256 sub_df0fdcdc;
bool stor15; offset 256
uint8 stor15;
uint8 stor15; offset 8
uint8 stor15; offset 16
uint8 stor15; offset 24
uint8 stor15; offset 32
uint8 stor15; offset 40
address sub_333c9ddaAddress; offset 48
uint256 stor15; offset 48
uint256 stor15; offset 32
uint256 stor15;
address sub_98074eb4Address;
address sub_0a10ff5fAddress;
address registryAddress;

function sub_037b9c17(?) {
    return sub_037b9c17
}

function seller() {
    return address(sellerAddress)
}

function sub_0a10ff5f(?) {
    return sub_0a10ff5fAddress
}

function terminated() {
    return bool(uint8(stor15.field_32))
}

function sub_1bdfca01(?) {
    return sub_1bdfca01
}

function sub_22e20d2a(?) {
    return sub_22e20d2a
}

function sub_2d4dce7d(?) {
    return sub_2d4dce7d
}

function sub_333c9dda(?) {
    return sub_333c9ddaAddress
}

function sub_41c20c8e(?) {
    return bool(uint8(stor15.field_40))
}

function closed() {
    return bool(uint8(stor15.field_24))
}

function sub_6182fab3(?) {
    return sub_6182fab3
}

function sub_6a8100b2(?) {
    return sub_6a8100b2
}

function buyer() {
    return address(buyerAddress)
}

function sub_7185b30c(?) {
    return sub_7185b30c
}

function sub_78561939(?) {
    return sub_78561939
}

function registry() {
    return registryAddress
}

function market() {
    return market
}

function sub_98074eb4(?) {
    return sub_98074eb4Address
}

function sub_9dec1430(?) {
    return sub_9dec1430
}

function initiated() {
    return bool(uint8(stor15.field_16))
}

function sub_ae3cde59(?) {
    return bool(uint8(stor15.field_0))
}

function strikePrice() {
    return strikePrice
}

function sub_c93c88d7(?) {
    return sub_c93c88d7
}

function sub_df0fdcdc(?) {
    return sub_df0fdcdc
}

function sub_fe2e5699(?) {
    return bool(uint8(stor15.field_8))
}

function _fallback() payable {
    revert
}

function sub_7d21f950(?) {
    return bool(uint8(stor15.field_32)), sub_333c9ddaAddress
}

function sub_8505571e(?) {
    require calldata.size - 4 >= 32
    return (5 * arg1 / 100 / 10)
}

function creatorFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (3 * arg1 / 100 / 10)
}

function percentOf(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return (arg1 * arg2 / 100)
}

function sub_2a6d096f(?) {
    return sub_7185b30c, sub_22e20d2a, sub_9dec1430, sub_2d4dce7d, sub_1bdfca01, sub_78561939, sub_c93c88d7, sub_6a8100b2
}

function isActive() {
    if bool(uint8(stor15.field_16)) != 1:
        return (1 == bool(uint8(stor15.field_16)))
    return not bool(uint8(stor15.field_24))
}

function sub_5407baea(?) {
    require calldata.size - 4 >= 32
    if address(buyerAddress) == arg1:
        return True
    return (address(sellerAddress) == arg1)
}

function sub_46f33a6d(?) {
    if not uint8(stor15.field_8):
        return bool(uint8(stor15.field_8))
    if not sub_df0fdcdc:
        return not bool(sub_df0fdcdc)
    return (block.timestamp < sub_df0fdcdc)
}

function sub_98531f28(?) {
    if not uint8(stor15.field_0):
        return bool(uint8(stor15.field_0))
    if not sub_6182fab3:
        return not bool(sub_6182fab3)
    return (block.timestamp < sub_6182fab3)
}

function percentChange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        return 0
    require arg1
    if (100 * arg2) - (100 * arg1) / arg1 > 0:
        return ((100 * arg2) - (100 * arg1) / arg1)
    return -((100 * arg2) - (100 * arg1) / arg1)
}

function sub_0c247fdb(?) {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        return 0
    require arg1
    if (100 * arg2) - (100 * arg1) / arg1 > 0:
        return (arg3 * (100 * arg2) - (100 * arg1) / arg1 / 100)
    return (-1 * arg3 * (100 * arg2) - (100 * arg1) / arg1 / 100)
}

function sub_2f301a78(?) {
    require calldata.size - 4 >= 96
    if not arg3:
        require arg2
        if not arg1:
            return 0
        require 0 / arg2 * arg1 / arg1 == 0 / arg2
        return (0 / arg2 * arg1 / 100 * 10^18)
    require 100 * 10^18 * arg3 / arg3 == 100 * 10^18
    require arg2
    if not arg1:
        return 0
    require 100 * 10^18 * arg3 / arg2 * arg1 / arg1 == 100 * 10^18 * arg3 / arg2
    return (100 * 10^18 * arg3 / arg2 * arg1 / 100 * 10^18)
}

function changeStrikePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor15.field_16):
        revert with 0, 'Must not be initiated'
    if uint8(stor15.field_24):
        revert with 0, 'losed'
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
    if arg1 <= 0:
        revert with 0, 'Price must be > 0'
    strikePrice = arg1
    sub_c93c88d7 = arg1
    sub_6a8100b2 = arg1
    emit 0xe77dd1d5: msg.sender, arg1
}

function sub_d525be32(?) {
    require calldata.size - 4 >= 32
    if address(buyerAddress) == arg1:
        if uint8(stor15.field_0):
            if not sub_6182fab3:
                return not bool(sub_6182fab3)
            if block.timestamp < sub_6182fab3:
                return (block.timestamp < sub_6182fab3)
    if address(sellerAddress) != arg1:
        return (address(sellerAddress) == arg1)
    if not uint8(stor15.field_8):
        return bool(uint8(stor15.field_8))
    if not sub_df0fdcdc:
        return not bool(sub_df0fdcdc)
    return (block.timestamp < sub_df0fdcdc)
}

function status() {
    if 1 == bool(uint8(stor15.field_24)):
        return 3
    if not uint8(stor15.field_16):
        return 0
    if not uint8(stor15.field_0):
        if not uint8(stor15.field_8):
            return 1
        if sub_df0fdcdc:
            if block.timestamp >= sub_df0fdcdc:
                return 1
    else:
        if sub_6182fab3:
            if block.timestamp >= sub_6182fab3:
                if not uint8(stor15.field_8):
                    return 1
                if sub_df0fdcdc:
                    if block.timestamp >= sub_df0fdcdc:
                        return 1
    return 2
}

function sub_7af5cde9(?) {
    require calldata.size - 4 >= 128
    require sub_037b9c17
    require sub_037b9c17
    if 100 * 10^18 * arg2 * arg4 / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * arg4 / 100 * 10^18:
        if arg1 <= (105 * 10^18 * arg4 / 100 * 10^18) - (100 * 10^18 * arg2 * arg4 / sub_037b9c17 / 100 * 10^18):
            return (arg1 > (105 * 10^18 * arg4 / 100 * 10^18) - (100 * 10^18 * arg2 * arg4 / sub_037b9c17 / 100 * 10^18))
    else:
        if arg1 <= 0:
            return (arg1 > 0)
    return (arg1 < (95 * 10^18 * arg4 / 100 * 10^18) + (100 * 10^18 * arg3 * arg4 / sub_037b9c17 / 100 * 10^18))
}

function sub_5dfa360a(?) {
    require calldata.size - 4 >= 160
    require arg1
    if arg5:
        if arg4 + (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18) >= 0:
            return (arg4 + (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18))
    else:
        if arg4 - (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18) >= 0:
            return (arg4 - (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18))
    revert
}

function sub_393d8533(?) {
    require calldata.size - 4 >= 128
    require arg1
    if arg4:
        if arg4:
            if 100 * 10^18 * arg2 * arg3 / arg1 / 100 * 10^18 > 105 * 10^18 * arg3 / 100 * 10^18:
                return 0
            if arg4:
                return ((105 * 10^18 * arg3 / 100 * 10^18) - (100 * 10^18 * arg2 * arg3 / arg1 / 100 * 10^18))
        return ((105 * 10^18 * arg3 / 100 * 10^18) + (100 * 10^18 * arg2 * arg3 / arg1 / 100 * 10^18))
    if arg4:
        if 100 * 10^18 * arg2 * arg3 / arg1 / 100 * 10^18 > 95 * 10^18 * arg3 / 100 * 10^18:
            return 0
        if arg4:
            return ((95 * 10^18 * arg3 / 100 * 10^18) - (100 * 10^18 * arg2 * arg3 / arg1 / 100 * 10^18))
    return ((95 * 10^18 * arg3 / 100 * 10^18) + (100 * 10^18 * arg2 * arg3 / arg1 / 100 * 10^18))
}

function sub_5df0d4cd(?) {
    require calldata.size - 4 >= 256
    if arg7 < 10^18:
        revert with 0, 'Notional below minimum'
    registryAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 3 * arg7 / 100 / 10:
        revert with 0, 'Not enough sent to cover fees'
    if ext_call.return_data[0] - (3 * arg7 / 100 / 10) < 20 * arg7 / 100:
        revert with 0, 'alInRange false'
    if ext_call.return_data[0] - (3 * arg7 / 100 / 10) > 500 * arg7 / 100:
        revert with 0, 'alInRange false'
    if not arg8:
        address(sellerAddress) = arg4
        sub_2d4dce7d = ext_call.return_data[0] - (3 * arg7 / 100 / 10)
    else:
        address(buyerAddress) = arg4
        sub_9dec1430 = ext_call.return_data[0] - (3 * arg7 / 100 / 10)
    market = arg5
    sub_037b9c17 = arg7
    sub_7185b30c = arg7
    sub_22e20d2a = arg7
    strikePrice = arg6
    sub_c93c88d7 = arg6
    sub_6a8100b2 = arg6
    sub_98074eb4Address = arg2
    sub_0a10ff5fAddress = arg3
    emit 0x69d73ba3: address(arg4), arg5, arg7, ext_call.return_data[0]
}

function sub_5e24e35d(?) {
    require calldata.size - 4 >= 32
    if uint8(stor15.field_24):
        revert with 0, 'losed'
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
    if address(buyerAddress) == arg1:
        revert with 0, 'Contract party can't call this'
    if address(sellerAddress) == arg1:
        revert with 0, 'Contract party can't call this'
    if address(buyerAddress) == msg.sender:
        if uint8(stor15.field_0):
            if not sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
    if address(sellerAddress) == msg.sender:
        if uint8(stor15.field_8):
            if not sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
    if msg.sender == address(buyerAddress):
        address(buyerAddress) = arg1
    else:
        if msg.sender == address(sellerAddress):
            address(sellerAddress) = arg1
        else:
            if msg.sender == sub_333c9ddaAddress:
                sub_333c9ddaAddress = 0
    require ext_code.size(sub_98074eb4Address)
    call sub_98074eb4Address.0x81e8dfa2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xce6084c9: msg.sender, arg1
}

function sub_497b13d3(?) {
    if uint8(stor15.field_16):
        revert with 0, 'Must not be initiated'
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failure transfering ownership of DAI tokens'
    emit 0xae0c9148: msg.sender, ext_call.return_data[0]
    uint8(stor15.field_24) = 1
    emit 0x6407ec2a: msg.sender, ext_call.return_data[0], market
}

function sub_f797efda(?) {
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, ''
    if uint8(stor15.field_24):
        revert with 0, ''
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'msg.sender must be seller'
        if not uint8(stor15.field_8):
            revert with 0, 'msg.sender must be seller'
        if sub_df0fdcdc:
            if block.timestamp >= sub_df0fdcdc:
                revert with 0, 'msg.sender must be seller'
    else:
        if not uint8(stor15.field_0):
            if address(sellerAddress) != msg.sender:
                revert with 0, 'msg.sender must be seller'
            if not uint8(stor15.field_8):
                revert with 0, 'msg.sender must be seller'
            if sub_df0fdcdc:
                if block.timestamp >= sub_df0fdcdc:
                    revert with 0, 'msg.sender must be seller'
        else:
            if sub_6182fab3:
                if block.timestamp >= sub_6182fab3:
                    if address(sellerAddress) != msg.sender:
                        revert with 0, 'msg.sender must be seller'
                    if not uint8(stor15.field_8):
                        revert with 0, 'msg.sender must be seller'
                    if sub_df0fdcdc:
                        if block.timestamp >= sub_df0fdcdc:
                            revert with 0, 'msg.sender must be seller'
    if address(buyerAddress) != msg.sender:
        sub_78561939 = 0
        sub_df0fdcdc = 0
        uint8(stor15.field_8) = 0
    else:
        sub_1bdfca01 = 0
        sub_6182fab3 = 0
        uint8(stor15.field_0) = 0
    emit 0x82229214: msg.sender
}

function sub_c2ef94f6(?) {
    if 1 == bool(uint8(stor15.field_24)):
        return address(buyerAddress), 
               address(sellerAddress),
               market,
               strikePrice,
               sub_037b9c17,
               bool(uint8(stor15.field_0)),
               bool(uint8(stor15.field_8)),
               3
    if not uint8(stor15.field_16):
        return address(buyerAddress), 
               address(sellerAddress),
               market,
               strikePrice,
               sub_037b9c17,
               bool(uint8(stor15.field_0)),
               bool(uint8(stor15.field_8)),
               0
    if not uint8(stor15.field_0):
        if not uint8(stor15.field_8):
            return address(buyerAddress), 
                   address(sellerAddress),
                   market,
                   strikePrice,
                   sub_037b9c17,
                   bool(uint8(stor15.field_0)),
                   bool(uint8(stor15.field_8)),
                   1
        if sub_df0fdcdc:
            if block.timestamp >= sub_df0fdcdc:
                return address(buyerAddress), 
                       address(sellerAddress),
                       market,
                       strikePrice,
                       sub_037b9c17,
                       bool(uint8(stor15.field_0)),
                       bool(uint8(stor15.field_8)),
                       1
    else:
        if sub_6182fab3:
            if block.timestamp >= sub_6182fab3:
                if not uint8(stor15.field_8):
                    return address(buyerAddress), 
                           address(sellerAddress),
                           market,
                           strikePrice,
                           sub_037b9c17,
                           bool(uint8(stor15.field_0)),
                           bool(uint8(stor15.field_8)),
                           1
                if sub_df0fdcdc:
                    if block.timestamp >= sub_df0fdcdc:
                        return address(buyerAddress), 
                               address(sellerAddress),
                               market,
                               strikePrice,
                               sub_037b9c17,
                               bool(uint8(stor15.field_0)),
                               bool(uint8(stor15.field_8)),
                               1
    return address(buyerAddress), 
           address(sellerAddress),
           market,
           strikePrice,
           sub_037b9c17,
           bool(uint8(stor15.field_0)),
           bool(uint8(stor15.field_8)),
           2
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor15.field_16):
        revert with 0, 'Must not be initiated'
    if uint8(stor15.field_24):
        revert with 0, 'losed'
    if address(buyerAddress) == msg.sender:
        revert with 0, 'Contract party can't call this'
    if address(sellerAddress) == msg.sender:
        revert with 0, 'Contract party can't call this'
    if arg1 <= 5 * sub_037b9c17 / 100 / 10:
        revert with 0, 'Not enough sent to cover fees'
    if arg1 - (5 * sub_037b9c17 / 100 / 10) < 20 * sub_037b9c17 / 100:
        revert with 0, 'alInRange false'
    if arg1 - (5 * sub_037b9c17 / 100 / 10) > 500 * sub_037b9c17 / 100:
        revert with 0, 'alInRange false'
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failure transfering ownership of DAI tokens'
    require ext_code.size(registryAddress)
    staticcall registryAddress.getFees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), (5 * sub_037b9c17 / 100 / 10) + (3 * sub_037b9c17 / 100 / 10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failure transfering ownership of DAI tokens'
    if address(buyerAddress):
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        sub_2d4dce7d = arg1 - (5 * sub_037b9c17 / 100 / 10)
    else:
        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
        sub_9dec1430 = arg1 - (5 * sub_037b9c17 / 100 / 10)
    uint8(stor15.field_16) = 1
    require ext_code.size(sub_98074eb4Address)
    call sub_98074eb4Address.0x81e8dfa2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x94bdcbfe: msg.sender, arg1, address(buyerAddress), address(sellerAddress), market, sub_037b9c17, strikePrice, sub_9dec1430, sub_2d4dce7d
}

function sub_1a9fddf2(?) {
    require calldata.size - 4 >= 32
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, ''
    if uint8(stor15.field_24):
        revert with 0, ''
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'msg.sender must be seller'
        if not uint8(stor15.field_8):
            revert with 0, 'msg.sender must be seller'
        if sub_df0fdcdc:
            if block.timestamp >= sub_df0fdcdc:
                revert with 0, 'msg.sender must be seller'
    else:
        if not uint8(stor15.field_0):
            if address(sellerAddress) != msg.sender:
                revert with 0, 'msg.sender must be seller'
            if not uint8(stor15.field_8):
                revert with 0, 'msg.sender must be seller'
            if sub_df0fdcdc:
                if block.timestamp >= sub_df0fdcdc:
                    revert with 0, 'msg.sender must be seller'
        else:
            if sub_6182fab3:
                if block.timestamp >= sub_6182fab3:
                    if address(sellerAddress) != msg.sender:
                        revert with 0, 'msg.sender must be seller'
                    if not uint8(stor15.field_8):
                        revert with 0, 'msg.sender must be seller'
                    if sub_df0fdcdc:
                        if block.timestamp >= sub_df0fdcdc:
                            revert with 0, 'msg.sender must be seller'
    if arg1 <= 0:
        revert with 0, 'Price must be > 0'
    require sub_037b9c17
    if address(buyerAddress) != msg.sender:
        if msg.sender == address(buyerAddress):
            if arg1 <= (95 * 10^18 * sub_6a8100b2 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_6a8100b2 / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'Must be more than liquidation pr'
            sub_1bdfca01 = arg1
        else:
            if msg.sender == address(sellerAddress):
                if arg1 >= (95 * 10^18 * sub_6a8100b2 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_6a8100b2 / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'Must be less than liquidation pr'
                sub_78561939 = arg1
    else:
        if 100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * sub_c93c88d7 / 100 * 10^18:
            if msg.sender == address(buyerAddress):
                if arg1 <= (105 * 10^18 * sub_c93c88d7 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'Must be more than liquidation pr'
                sub_1bdfca01 = arg1
            else:
                if msg.sender == address(sellerAddress):
                    if arg1 >= (105 * 10^18 * sub_c93c88d7 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18):
                        revert with 0, 'Must be less than liquidation pr'
                    sub_78561939 = arg1
        else:
            if msg.sender == address(buyerAddress):
                if arg1 <= 0:
                    revert with 0, 'Must be more than liquidation pr'
                sub_1bdfca01 = arg1
            else:
                if msg.sender == address(sellerAddress):
                    if arg1 >= 0:
                        revert with 0, 'Must be less than liquidation pr'
                    sub_78561939 = arg1
    emit 0xbbee2154: msg.sender, arg1
}

function sub_2802759b(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.0x80f55605 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    market = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x37b9c17 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_037b9c17 = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0xc52987cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    strikePrice = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x7150d8ae with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
    require ext_code.size(arg1)
    staticcall arg1.seller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(arg1)
    staticcall arg1.0x9dec1430 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_9dec1430 = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x7185b30c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_7185b30c = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0xc93c88d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c93c88d7 = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x2d4dce7d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_2d4dce7d = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x22e20d2a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_22e20d2a = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x6a8100b2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_6a8100b2 = ext_call.return_data[0]
    sub_98074eb4Address = arg3
    registryAddress = arg2
    sub_0a10ff5fAddress = arg4
    uint8(stor15.field_16) = 1
    require ext_code.size(arg3)
    call arg3.0x81e8dfa2 with:
         gas gas_remaining wei
        args address(sellerAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function topup(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Amount not enough'
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, 'Must be initiated'
    if uint8(stor15.field_24):
        revert with 0, 'losed'
    if address(buyerAddress) == msg.sender:
        if uint8(stor15.field_0):
            if not sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
    else:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
        if address(buyerAddress) == msg.sender:
            if uint8(stor15.field_0):
                if not sub_6182fab3:
                    revert with 0, 'g.sender must not be seller'
                if block.timestamp < sub_6182fab3:
                    revert with 0, 'g.sender must not be seller'
    if address(sellerAddress) == msg.sender:
        if uint8(stor15.field_8):
            if not sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
    if msg.sender == address(buyerAddress):
        require arg1 + sub_9dec1430 >= sub_9dec1430
        if arg1 + sub_9dec1430 < 20 * sub_037b9c17 / 100:
            revert with 0, 'alInRange false'
        if arg1 + sub_9dec1430 > 500 * sub_037b9c17 / 100:
            revert with 0, 'alInRange false'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        if address(buyerAddress) != msg.sender:
            sub_2d4dce7d = arg1 + sub_9dec1430
        else:
            sub_9dec1430 += arg1
        emit 0xea455ea5: msg.sender, arg1, 0, arg1 + sub_9dec1430, market
    else:
        require arg1 + sub_2d4dce7d >= sub_2d4dce7d
        if arg1 + sub_2d4dce7d < 20 * sub_037b9c17 / 100:
            revert with 0, 'alInRange false'
        if arg1 + sub_2d4dce7d > 500 * sub_037b9c17 / 100:
            revert with 0, 'alInRange false'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        if address(buyerAddress) != msg.sender:
            sub_2d4dce7d += arg1
        else:
            sub_9dec1430 = arg1 + sub_2d4dce7d
        emit 0xea455ea5: msg.sender, arg1, 0, arg1 + sub_2d4dce7d, market
}

function upgrade() {
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, ''
    if uint8(stor15.field_24):
        revert with 0, ''
    if address(buyerAddress) == msg.sender:
        if uint8(stor15.field_0):
            if not sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
    if address(sellerAddress) == msg.sender:
        if uint8(stor15.field_8):
            if not sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
    if msg.sender == sub_333c9ddaAddress:
        revert with 0, 'msg.sender already called'
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x23ec7f2a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xc5a95f8 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
        revert with 0, 'Already at latest version'
    if not sub_333c9ddaAddress:
        Mask(208, 0, stor15.field_48) = Mask(208, 0, msg.sender)
    else:
        uint8(stor15.field_40) = 1
        require ext_code.size(registryAddress)
        staticcall registryAddress.0x23ec7f2a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x165ae0fc with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        uint256(stor15.field_0) = 1
        emit 0xbf44b7c2: address(ext_call.return_data[0])
}

function liquidate() {
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, ''
    if uint8(stor15.field_24):
        revert with 0, ''
    require ext_code.size(sub_0a10ff5fAddress)
    staticcall sub_0a10ff5fAddress.0x61da1439 with:
            gas gas_remaining wei
           args market
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_037b9c17
    require sub_037b9c17
    if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
        if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18):
            if ext_call.return_data[0] < (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'Liquidate threshold not yet reached'
    else:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0] < (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'Liquidate threshold not yet reached'
    require sub_037b9c17
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
        if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18):
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(buyerAddress), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failure transfering ownership of DAI tokens'
            emit 0xae0c9148: address(buyerAddress), ext_call.return_data[0]
            uint8(stor15.field_24) = 1
            if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18):
                emit 0xaa0254c6: address(buyerAddress), ext_call.return_data[0], 0, market
            else:
                emit 0xaa0254c6: address(buyerAddress), 0, ext_call.return_data[0], market
        else:
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(sellerAddress), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failure transfering ownership of DAI tokens'
            emit 0xae0c9148: address(sellerAddress), ext_call.return_data[0]
            uint8(stor15.field_24) = 1
            if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18):
                emit 0xaa0254c6: address(sellerAddress), ext_call.return_data[0], 0, market
            else:
                emit 0xaa0254c6: address(sellerAddress), 0, ext_call.return_data[0], market
    else:
        if ext_call.return_data[0] > 0:
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(buyerAddress), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failure transfering ownership of DAI tokens'
            emit 0xae0c9148: address(buyerAddress), ext_call.return_data[0]
            uint8(stor15.field_24) = 1
            if ext_call.return_data[0] > 0:
                emit 0xaa0254c6: address(buyerAddress), ext_call.return_data[0], 0, market
            else:
                emit 0xaa0254c6: address(buyerAddress), 0, ext_call.return_data[0], market
        else:
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(sellerAddress), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Failure transfering ownership of DAI tokens'
            emit 0xae0c9148: address(sellerAddress), ext_call.return_data[0]
            uint8(stor15.field_24) = 1
            if ext_call.return_data[0] > 0:
                emit 0xaa0254c6: address(sellerAddress), ext_call.return_data[0], 0, market
            else:
                emit 0xaa0254c6: address(sellerAddress), 0, ext_call.return_data[0], market
}

function sub_818197ea(?) {
    require calldata.size - 4 >= 64
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, ''
    if uint8(stor15.field_24):
        revert with 0, ''
    if address(buyerAddress) == msg.sender:
        if uint8(stor15.field_0):
            if not sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
    if address(sellerAddress) == msg.sender:
        if uint8(stor15.field_8):
            if not sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
    if arg1 <= 0:
        revert with 0, 'Price must be > 0'
    require sub_037b9c17
    if address(buyerAddress) != msg.sender:
        if arg2 > block.timestamp:
            if msg.sender == address(buyerAddress):
                if arg1 <= (95 * 10^18 * sub_6a8100b2 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_6a8100b2 / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'Must be more than liquidation pr'
                uint8(stor15.field_0) = 1
                sub_1bdfca01 = arg1
                sub_6182fab3 = arg2
            else:
                if msg.sender == address(sellerAddress):
                    if arg1 >= (95 * 10^18 * sub_6a8100b2 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_6a8100b2 / sub_037b9c17 / 100 * 10^18):
                        revert with 0, 'Must be less than liquidation pr'
                    uint8(stor15.field_8) = 1
                    sub_78561939 = arg1
                    sub_df0fdcdc = arg2
            require ext_code.size(sub_98074eb4Address)
            call sub_98074eb4Address.0x62c59704 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xb5d6baf6: msg.sender, arg1, arg2
        else:
            if msg.sender == address(buyerAddress):
                if arg1 <= (95 * 10^18 * sub_6a8100b2 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_6a8100b2 / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'Must be more than liquidation pr'
                uint8(stor15.field_0) = 1
                sub_1bdfca01 = arg1
                sub_6182fab3 = 0
            else:
                if msg.sender == address(sellerAddress):
                    if arg1 >= (95 * 10^18 * sub_6a8100b2 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_6a8100b2 / sub_037b9c17 / 100 * 10^18):
                        revert with 0, 'Must be less than liquidation pr'
                    uint8(stor15.field_8) = 1
                    sub_78561939 = arg1
                    sub_df0fdcdc = 0
            require ext_code.size(sub_98074eb4Address)
            call sub_98074eb4Address.0x62c59704 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xb5d6baf6: msg.sender, arg1, 0
    else:
        if 100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * sub_c93c88d7 / 100 * 10^18:
            if arg2 > block.timestamp:
                if msg.sender == address(buyerAddress):
                    if arg1 <= (105 * 10^18 * sub_c93c88d7 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18):
                        revert with 0, 'Must be more than liquidation pr'
                    uint8(stor15.field_0) = 1
                    sub_1bdfca01 = arg1
                    sub_6182fab3 = arg2
                else:
                    if msg.sender == address(sellerAddress):
                        if arg1 >= (105 * 10^18 * sub_c93c88d7 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18):
                            revert with 0, 'Must be less than liquidation pr'
                        uint8(stor15.field_8) = 1
                        sub_78561939 = arg1
                        sub_df0fdcdc = arg2
                require ext_code.size(sub_98074eb4Address)
                call sub_98074eb4Address.0x62c59704 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb5d6baf6: msg.sender, arg1, arg2
            else:
                if msg.sender == address(buyerAddress):
                    if arg1 <= (105 * 10^18 * sub_c93c88d7 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18):
                        revert with 0, 'Must be more than liquidation pr'
                    uint8(stor15.field_0) = 1
                    sub_1bdfca01 = arg1
                    sub_6182fab3 = 0
                else:
                    if msg.sender == address(sellerAddress):
                        if arg1 >= (105 * 10^18 * sub_c93c88d7 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_c93c88d7 / sub_037b9c17 / 100 * 10^18):
                            revert with 0, 'Must be less than liquidation pr'
                        uint8(stor15.field_8) = 1
                        sub_78561939 = arg1
                        sub_df0fdcdc = 0
                require ext_code.size(sub_98074eb4Address)
                call sub_98074eb4Address.0x62c59704 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb5d6baf6: msg.sender, arg1, 0
        else:
            if arg2 > block.timestamp:
                if msg.sender == address(buyerAddress):
                    if arg1 <= 0:
                        revert with 0, 'Must be more than liquidation pr'
                    uint8(stor15.field_0) = 1
                    sub_1bdfca01 = arg1
                    sub_6182fab3 = arg2
                else:
                    if msg.sender == address(sellerAddress):
                        if arg1 >= 0:
                            revert with 0, 'Must be less than liquidation pr'
                        uint8(stor15.field_8) = 1
                        sub_78561939 = arg1
                        sub_df0fdcdc = arg2
                require ext_code.size(sub_98074eb4Address)
                call sub_98074eb4Address.0x62c59704 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb5d6baf6: msg.sender, arg1, arg2
            else:
                if msg.sender == address(buyerAddress):
                    if arg1 <= 0:
                        revert with 0, 'Must be more than liquidation pr'
                    uint8(stor15.field_0) = 1
                    sub_1bdfca01 = arg1
                    sub_6182fab3 = 0
                else:
                    if msg.sender == address(sellerAddress):
                        if arg1 >= 0:
                            revert with 0, 'Must be less than liquidation pr'
                        uint8(stor15.field_8) = 1
                        sub_78561939 = arg1
                        sub_df0fdcdc = 0
                require ext_code.size(sub_98074eb4Address)
                call sub_98074eb4Address.0x62c59704 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xb5d6baf6: msg.sender, arg1, 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Can't withdraw more then available'
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, 'Must be initiated'
    if uint8(stor15.field_24):
        revert with 0, 'losed'
    if address(buyerAddress) == msg.sender:
        if uint8(stor15.field_0):
            if not sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_6182fab3:
                revert with 0, 'g.sender must not be seller'
    else:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
        if address(buyerAddress) == msg.sender:
            if uint8(stor15.field_0):
                if not sub_6182fab3:
                    revert with 0, 'g.sender must not be seller'
                if block.timestamp < sub_6182fab3:
                    revert with 0, 'g.sender must not be seller'
    if address(sellerAddress) == msg.sender:
        if uint8(stor15.field_8):
            if not sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
            if block.timestamp < sub_df0fdcdc:
                revert with 0, 'g.sender must not be seller'
    if msg.sender == address(buyerAddress):
        if arg1 > sub_9dec1430:
            revert with 0, 'Can't withdraw more then available'
        require ext_code.size(sub_0a10ff5fAddress)
        staticcall sub_0a10ff5fAddress.0x61da1439 with:
                gas gas_remaining wei
               args market
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_037b9c17
        require sub_037b9c17
        if msg.sender == address(buyerAddress):
            if (100 * 10^18 * sub_9dec1430 * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                if ext_call.return_data[0] <= (105 * 10^18 * strikePrice / 100 * 10^18) - ((100 * 10^18 * sub_9dec1430 * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'alInRange false'
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'alInRange false'
            if ext_call.return_data[0] >= (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'alInRange false'
        else:
            if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                if ext_call.return_data[0] <= (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'alInRange false'
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'alInRange false'
            if ext_call.return_data[0] >= (95 * 10^18 * strikePrice / 100 * 10^18) + ((100 * 10^18 * sub_9dec1430 * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'alInRange false'
        require strikePrice
        if msg.sender == address(buyerAddress):
            require sub_9dec1430 - arg1 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            if sub_9dec1430 - arg1 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) < 20 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
            if sub_9dec1430 - arg1 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) > 500 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
        else:
            require sub_9dec1430 - arg1 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            if sub_9dec1430 - arg1 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) < 20 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
            if sub_9dec1430 - arg1 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) > 500 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        emit 0xae0c9148: msg.sender, arg1
        if address(buyerAddress) != msg.sender:
            sub_2d4dce7d = sub_9dec1430 - arg1
        else:
            sub_9dec1430 -= arg1
        emit 0xea455ea5: msg.sender, arg1, 1, sub_9dec1430 - arg1, market
    else:
        if arg1 > sub_2d4dce7d:
            revert with 0, 'Can't withdraw more then available'
        require ext_code.size(sub_0a10ff5fAddress)
        staticcall sub_0a10ff5fAddress.0x61da1439 with:
                gas gas_remaining wei
               args market
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_037b9c17
        require sub_037b9c17
        if msg.sender == address(buyerAddress):
            if (100 * 10^18 * sub_2d4dce7d * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                if ext_call.return_data[0] <= (105 * 10^18 * strikePrice / 100 * 10^18) - ((100 * 10^18 * sub_2d4dce7d * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'alInRange false'
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'alInRange false'
            if ext_call.return_data[0] >= (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'alInRange false'
        else:
            if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                if ext_call.return_data[0] <= (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_037b9c17 / 100 * 10^18):
                    revert with 0, 'alInRange false'
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'alInRange false'
            if ext_call.return_data[0] >= (95 * 10^18 * strikePrice / 100 * 10^18) + ((100 * 10^18 * sub_2d4dce7d * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'alInRange false'
        require strikePrice
        if msg.sender == address(buyerAddress):
            require sub_2d4dce7d - arg1 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            if sub_2d4dce7d - arg1 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) < 20 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
            if sub_2d4dce7d - arg1 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) > 500 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
        else:
            require sub_2d4dce7d - arg1 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            if sub_2d4dce7d - arg1 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) < 20 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
            if sub_2d4dce7d - arg1 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) > 500 * sub_037b9c17 / 100:
                revert with 0, 'alInRange false'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        emit 0xae0c9148: msg.sender, arg1
        if address(buyerAddress) != msg.sender:
            sub_2d4dce7d -= arg1
        else:
            sub_9dec1430 = sub_2d4dce7d - arg1
        emit 0xea455ea5: msg.sender, arg1, 1, sub_2d4dce7d - arg1, market
}

function sub_93a96512(?) {
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, ''
    if uint8(stor15.field_24):
        revert with 0, ''
    if address(buyerAddress) != msg.sender:
        if address(sellerAddress) != msg.sender:
            revert with 0, 'Only contract parties can do th'
    require ext_code.size(sub_0a10ff5fAddress)
    staticcall sub_0a10ff5fAddress.0x61da1439 with:
            gas gas_remaining wei
           args market
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require strikePrice
    require sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
    require strikePrice
    require sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) <= ext_call.return_data[0]
    require sub_2d4dce7d <= ext_call.return_data[0] - sub_9dec1430
    if ext_call.return_data[0] - sub_9dec1430 - sub_2d4dce7d:
        emit 0xec6a0b86: (ext_call.return_data[0] - sub_9dec1430 - sub_2d4dce7d)
    require ext_code.size(registryAddress)
    staticcall registryAddress.getFees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryAddress)
    staticcall registryAddress.getDAI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] - sub_9dec1430 - sub_2d4dce7d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failure transfering ownership of DAI tokens'
    if msg.sender == address(buyerAddress):
        require (5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100 <= sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
        require (5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100 >= 0
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        emit 0xae0c9148: address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(sellerAddress), ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        emit 0xae0c9148: address(sellerAddress), ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
        uint8(stor15.field_24) = 1
        uint8(stor15.field_32) = 1
        Mask(224, 0, stor15.field_32) = 0
        stor15.field_256 % 1 = 0
        if address(buyerAddress) != msg.sender:
            emit 0x81bf0ecc: address(sellerAddress), ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), market
        else:
            emit 0x81bf0ecc: address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), address(sellerAddress), ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), market
    else:
        require (5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100 >= 0
        require (5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100 <= sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(buyerAddress), ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        emit 0xae0c9148: address(buyerAddress), ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        emit 0xae0c9148: address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
        uint8(stor15.field_24) = 1
        uint8(stor15.field_32) = 1
        Mask(224, 0, stor15.field_32) = 0
        stor15.field_256 % 1 = 0
        if address(buyerAddress) != msg.sender:
            emit 0x81bf0ecc: address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), address(buyerAddress), ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), market
        else:
            emit 0x81bf0ecc: address(buyerAddress), ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) + sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_037b9c17 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), market
}

function sub_e24c469b(?) {
    require calldata.size - 4 >= 64
    if bool(uint8(stor15.field_16)) != 1:
        revert with 0, ''
    if uint8(stor15.field_24):
        revert with 0, ''
    if arg1:
        if address(buyerAddress) != address(buyerAddress):
            if address(sellerAddress) != address(buyerAddress):
                revert with 0, 'Must be on sale'
            if not uint8(stor15.field_8):
                revert with 0, 'Must be on sale'
            if sub_df0fdcdc:
                if block.timestamp >= sub_df0fdcdc:
                    revert with 0, 'Must be on sale'
        else:
            if not uint8(stor15.field_0):
                if address(sellerAddress) != address(buyerAddress):
                    revert with 0, 'Must be on sale'
                if not uint8(stor15.field_8):
                    revert with 0, 'Must be on sale'
                if sub_df0fdcdc:
                    if block.timestamp >= sub_df0fdcdc:
                        revert with 0, 'Must be on sale'
            else:
                if sub_6182fab3:
                    if block.timestamp >= sub_6182fab3:
                        if address(sellerAddress) != address(buyerAddress):
                            revert with 0, 'Must be on sale'
                        if not uint8(stor15.field_8):
                            revert with 0, 'Must be on sale'
                        if sub_df0fdcdc:
                            if block.timestamp >= sub_df0fdcdc:
                                revert with 0, 'Must be on sale'
    else:
        if address(buyerAddress) != address(sellerAddress):
            if address(sellerAddress) != address(sellerAddress):
                revert with 0, 'Must be on sale'
            if not uint8(stor15.field_8):
                revert with 0, 'Must be on sale'
            if sub_df0fdcdc:
                if block.timestamp >= sub_df0fdcdc:
                    revert with 0, 'Must be on sale'
        else:
            if not uint8(stor15.field_0):
                if address(sellerAddress) != address(sellerAddress):
                    revert with 0, 'Must be on sale'
                if not uint8(stor15.field_8):
                    revert with 0, 'Must be on sale'
                if sub_df0fdcdc:
                    if block.timestamp >= sub_df0fdcdc:
                        revert with 0, 'Must be on sale'
            else:
                if sub_6182fab3:
                    if block.timestamp >= sub_6182fab3:
                        if address(sellerAddress) != address(sellerAddress):
                            revert with 0, 'Must be on sale'
                        if not uint8(stor15.field_8):
                            revert with 0, 'Must be on sale'
                        if sub_df0fdcdc:
                            if block.timestamp >= sub_df0fdcdc:
                                revert with 0, 'Must be on sale'
    if address(buyerAddress) == msg.sender:
        revert with 0, 'Contract party can't call this'
    if address(sellerAddress) == msg.sender:
        revert with 0, 'Contract party can't call this'
    if arg2 <= 5 * sub_037b9c17 / 100 / 10:
        revert with 0, 'Not enough sent to cover fees'
    require 5 * sub_037b9c17 / 100 / 10 <= arg2
    if arg2 - (5 * sub_037b9c17 / 100 / 10) < 20 * sub_037b9c17 / 100:
        revert with 0, 'alInRange false'
    if arg2 - (5 * sub_037b9c17 / 100 / 10) > 500 * sub_037b9c17 / 100:
        revert with 0, 'alInRange false'
    require ext_code.size(sub_0a10ff5fAddress)
    staticcall sub_0a10ff5fAddress.0x61da1439 with:
            gas gas_remaining wei
           args market
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_037b9c17
    require sub_037b9c17
    if arg1:
        if (100 * 10^18 * arg2 * sub_1bdfca01) - (100 * 10^18 * 5 * sub_037b9c17 / 100 / 10 * sub_1bdfca01) / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * sub_1bdfca01 / 100 * 10^18:
            if ext_call.return_data[0] <= (105 * 10^18 * sub_1bdfca01 / 100 * 10^18) - ((100 * 10^18 * arg2 * sub_1bdfca01) - (100 * 10^18 * 5 * sub_037b9c17 / 100 / 10 * sub_1bdfca01) / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'alInRange false'
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'alInRange false'
        if ext_call.return_data[0] >= (95 * 10^18 * sub_1bdfca01 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_1bdfca01 / sub_037b9c17 / 100 * 10^18):
            revert with 0, 'alInRange false'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getFees() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 5 * sub_037b9c17 / 100 / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        require strikePrice
        if arg1:
            if arg1:
                require sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_1bdfca01:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_1bdfca01 / sub_1bdfca01 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_1bdfca01 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
            else:
                require sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(buyerAddress), sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(buyerAddress), sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_1bdfca01:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_1bdfca01 / sub_1bdfca01 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_1bdfca01 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
        else:
            if arg1:
                require sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sellerAddress), sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(sellerAddress), sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_1bdfca01:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_1bdfca01 / sub_1bdfca01 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_1bdfca01 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
            else:
                require sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_1bdfca01:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_1bdfca01 / sub_1bdfca01 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_1bdfca01 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_1bdfca01
                            sub_22e20d2a = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_1bdfca01
                            sub_7185b30c = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_1bdfca01
                            sub_037b9c17 = 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 100 * 10^18 * sub_1bdfca01 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
    else:
        if 100 * 10^18 * sub_9dec1430 * sub_78561939 / sub_037b9c17 / 100 * 10^18 <= 105 * 10^18 * sub_78561939 / 100 * 10^18:
            if ext_call.return_data[0] <= (105 * 10^18 * sub_78561939 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_78561939 / sub_037b9c17 / 100 * 10^18):
                revert with 0, 'alInRange false'
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'alInRange false'
        if ext_call.return_data[0] >= (95 * 10^18 * sub_78561939 / 100 * 10^18) + ((100 * 10^18 * arg2 * sub_78561939) - (100 * 10^18 * 5 * sub_037b9c17 / 100 / 10 * sub_78561939) / sub_037b9c17 / 100 * 10^18):
            revert with 0, 'alInRange false'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        require ext_code.size(registryAddress)
        staticcall registryAddress.getFees() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(registryAddress)
        staticcall registryAddress.getDAI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 5 * sub_037b9c17 / 100 / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failure transfering ownership of DAI tokens'
        require strikePrice
        if arg1:
            if arg1:
                require sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(buyerAddress), sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_78561939:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_78561939 / sub_78561939 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_78561939 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
            else:
                require sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(buyerAddress), sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(buyerAddress), sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_78561939:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_78561939 / sub_78561939 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 0, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_78561939 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(buyerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(buyerAddress), 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_9dec1430 - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
        else:
            if arg1:
                require sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sellerAddress), sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(sellerAddress), sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_78561939:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_78561939 / sub_78561939 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_78561939 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d + (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
            else:
                require sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Failure transfering ownership of DAI tokens'
                emit 0xae0c9148: address(sellerAddress), sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(registryAddress)
                staticcall registryAddress.getDAI() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 - (5 * sub_037b9c17 / 100 / 10) <= ext_call.return_data[0]
                if not sub_78561939:
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 0 / strikePrice * sub_037b9c17 / sub_037b9c17 == 0 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                else:
                    require 100 * 10^18 * sub_78561939 / sub_78561939 == 100 * 10^18
                    require strikePrice
                    if not sub_037b9c17:
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 0
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 0
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 0
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 0, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
                    else:
                        require 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / sub_037b9c17 == 100 * 10^18 * sub_78561939 / strikePrice
                        if not arg1:
                            uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
                            sub_2d4dce7d = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_6a8100b2 = sub_78561939
                            sub_22e20d2a = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_9dec1430 = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_78561939 = 0
                            sub_df0fdcdc = 0
                            uint8(stor15.field_8) = 0
                        else:
                            uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                            sub_9dec1430 = arg2 - (5 * sub_037b9c17 / 100 / 10)
                            sub_c93c88d7 = sub_78561939
                            sub_7185b30c = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_2d4dce7d = ext_call.return_data[0] - arg2 + (5 * sub_037b9c17 / 100 / 10)
                            strikePrice = sub_78561939
                            sub_037b9c17 = 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18
                            sub_1bdfca01 = 0
                            sub_6182fab3 = 0
                            uint8(stor15.field_0) = 0
                        if sub_333c9ddaAddress == address(sellerAddress):
                            sub_333c9ddaAddress = 0
                        require ext_code.size(sub_98074eb4Address)
                        call sub_98074eb4Address.0x81e8dfa2 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xd356d730: msg.sender, address(sellerAddress), 100 * 10^18 * sub_78561939 / strikePrice * sub_037b9c17 / 100 * 10^18, sub_2d4dce7d - (100 * 10^18 * sub_037b9c17 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), arg2, market
}



}
