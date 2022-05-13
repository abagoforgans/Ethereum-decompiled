contract main {




// =====================  Runtime code  =====================


#
#  - sub_5e24e35d(?)
#
const sub_1bcccdf7(?) = 5

const sub_28970492(?) = 100 * 10^18

const sub_5ab3076c(?) = 20

const sub_6ca6bbd8(?) = 5 * 10^18

const sub_7b433e09(?) = 500

const sub_917faf0e(?) = 5

const sub_d7a7afac(?) = 100 * 10^18

const sub_de46da80(?) = 1


address owner;
address stor1;
address buyerAddress;
address sellerAddress;
uint32 stor4;
uint256 market;
uint256 sub_3c79ad64;
uint256 sub_7185b30c;
uint256 sub_22e20d2a;
uint256 strikePrice;
uint256 sub_c93c88d7;
uint256 sub_6a8100b2;
uint256 sub_9dec1430;
uint256 sub_2d4dce7d;
mapping of uint256 withdrawable;
uint256 sub_1bdfca01;
uint256 sub_6182fab3;
uint256 sub_78561939;
uint256 sub_df0fdcdc;
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 16
uint8 stor18; offset 24
uint8 stor18; offset 32
address feesAddr; offset 40
uint256 stor18; offset 32
uint256 stor18; offset 24
uint256 stor18; offset 16
uint256 stor18; offset 8

function seller() {
    return sellerAddress
}

function terminated() {
    return bool(uint8(stor18.field_32))
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

function sub_3c79ad64(?) {
    return sub_3c79ad64
}

function closed() {
    return bool(uint8(stor18.field_24))
}

function sub_6182fab3(?) {
    return sub_6182fab3
}

function feesAddr() {
    return feesAddr
}

function sub_6a8100b2(?) {
    return sub_6a8100b2
}

function buyer() {
    return buyerAddress
}

function sub_7185b30c(?) {
    return sub_7185b30c
}

function sub_78561939(?) {
    return sub_78561939
}

function market() {
    return uint256(market)
}

function owner() {
    return owner
}

function sub_9dec1430(?) {
    return sub_9dec1430
}

function initiated() {
    return bool(uint8(stor18.field_16))
}

function sub_ae3cde59(?) {
    return bool(uint8(stor18.field_0))
}

function strikePrice() {
    return strikePrice
}

function sub_c93c88d7(?) {
    return sub_c93c88d7
}

function withdrawable(address arg1) {
    return withdrawable[arg1]
}

function sub_df0fdcdc(?) {
    return sub_df0fdcdc
}

function sub_fe2e5699(?) {
    return bool(uint8(stor18.field_8))
}

function sub_cc2ceb92(?) {
    return (5 * arg1 / 100 / 10)
}

function sub_eb3c02d0(?) {
    return (3 * arg1 / 100 / 10)
}

function _fallback() payable {
    emit 0x46a34744: eth.balance(this.address)
}

function percentOf(uint256 arg1, uint256 arg2) {
    return (arg1 * arg2 / 100)
}

function sub_2f301a78(?) {
    require arg2
    return (arg1 * 100 * 10^18 * arg3 / arg2 / 100 * 10^18)
}

function sub_5407baea(?) {
    if arg1 == buyerAddress:
        return True
    return (arg1 == sellerAddress)
}

function sub_dc2ae6e8(?) {
    if arg2 < 20 * arg1 / 100:
        return arg2 >= 20 * arg1 / 100
    return arg2 <= 500 * arg1 / 100
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isActive() {
    if bool(uint8(stor18.field_16)) != 1:
        return (bool(uint8(stor18.field_16)) == 1)
    return not bool(uint8(stor18.field_24))
}

function sub_46f33a6d(?) {
    if not uint8(stor18.field_8):
        return bool(uint8(stor18.field_8))
    if not sub_df0fdcdc:
        return not sub_df0fdcdc
    return (block.timestamp < sub_df0fdcdc)
}

function sub_98531f28(?) {
    if not uint8(stor18.field_0):
        return bool(uint8(stor18.field_0))
    if not sub_6182fab3:
        return not sub_6182fab3
    return (block.timestamp < sub_6182fab3)
}

function percentChange(uint256 arg1, uint256 arg2) {
    if arg1 == arg2:
        return 0
    require arg1
    if (100 * arg2) - (100 * arg1) / arg1 > 0:
        return ((100 * arg2) - (100 * arg1) / arg1)
    return -((100 * arg2) - (100 * arg1) / arg1)
}

function sub_f7d740ac(?) {
    if arg1 == arg2:
        return 0
    require arg1
    if (100 * arg2) - (100 * arg1) / arg1 > 0:
        return (arg3 * (100 * arg2) - (100 * arg1) / arg1 / 100)
    return (-1 * arg3 * (100 * arg2) - (100 * arg1) / arg1 / 100)
}

function sub_9fcf7a13(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (msg.sender == ext_call.return_data[12 len 20])
}

function sub_a22adf3b(?) {
    require withdrawable[address(msg.sender)] > 0
    withdrawable[address(msg.sender)] = 0
    call msg.sender with:
       value withdrawable[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3ef7bff2: msg.sender
}

function sub_d525be32(?) {
    if arg1 == buyerAddress:
        if uint8(stor18.field_0):
            if not sub_6182fab3:
                return not sub_6182fab3
            if block.timestamp < sub_6182fab3:
                return (block.timestamp < sub_6182fab3)
    if arg1 != sellerAddress:
        return (arg1 == sellerAddress)
    if not uint8(stor18.field_8):
        return bool(uint8(stor18.field_8))
    if not sub_df0fdcdc:
        return not sub_df0fdcdc
    return (block.timestamp < sub_df0fdcdc)
}

function sub_497b13d3(?) {
    require not uint8(stor18.field_16)
    if buyerAddress != msg.sender:
        require msg.sender == sellerAddress
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit 0xae0c9148: msg.sender, eth.balance(this.address)
    else:
        withdrawable[address(msg.sender)] = eth.balance(this.address)
        emit 0x4ef7babf: msg.sender, eth.balance(this.address)
    Mask(232, 0, stor18.field_24) = 1
    emit 0xd586631c: msg.sender, eth.balance(this.address)
}

function sub_7af5cde9(?) {
    require sub_3c79ad64
    require sub_3c79ad64
    if 100 * 10^18 * arg2 * arg4 / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * arg4 / 100 * 10^18:
        if arg1 <= (105 * 10^18 * arg4 / 100 * 10^18) - (100 * 10^18 * arg2 * arg4 / sub_3c79ad64 / 100 * 10^18):
            return (arg1 > (105 * 10^18 * arg4 / 100 * 10^18) - (100 * 10^18 * arg2 * arg4 / sub_3c79ad64 / 100 * 10^18))
    else:
        if arg1 <= 0:
            return (arg1 > 0)
    return (arg1 < (95 * 10^18 * arg4 / 100 * 10^18) + (100 * 10^18 * arg3 * arg4 / sub_3c79ad64 / 100 * 10^18))
}

function sub_5dfa360a(?) {
    require arg1
    if arg5:
        if arg4 + (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18) >= 0:
            return (arg4 + (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18))
    else:
        if arg4 - (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18) >= 0:
            return (arg4 - (100 * 10^18 * arg3 * (100 * 10^18 * arg2) - (100 * 10^18 * arg1) / arg1 / 100 * 10^18 / 100 * 10^18))
    revert
}

function sub_640df81a(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b71267dc(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd24fb955 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function status() {
    if bool(uint8(stor18.field_24)) == 1:
        return 3
    if not uint8(stor18.field_16):
        return 0
    if not uint8(stor18.field_0):
        if not uint8(stor18.field_8):
            return 1
        if sub_df0fdcdc:
            if block.timestamp >= sub_df0fdcdc:
                return 1
    else:
        if sub_6182fab3:
            if block.timestamp >= sub_6182fab3:
                if not uint8(stor18.field_8):
                    return 1
                if sub_df0fdcdc:
                    if block.timestamp >= sub_df0fdcdc:
                        return 1
    return 2
}

function sub_a607271e(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x67e4fe7e with:
            gas gas_remaining wei
           args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_801d42f7(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd24fb955 with:
            gas gas_remaining wei
           args uint256(market), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 2)
}

function sub_dd4c9c7c(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb63885b8 with:
            gas gas_remaining wei
           args 0, arg1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_084d3844(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5f28cb74 with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_393d8533(?) {
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

function sub_27dca828(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5f28cb74 with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x69774c2d with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_40d91bea(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe2d46fe5 with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256]
}

function sub_1a9fddf2(?) {
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    if buyerAddress != msg.sender:
        require msg.sender == sellerAddress
        require uint8(stor18.field_8)
        if sub_df0fdcdc:
            require block.timestamp < sub_df0fdcdc
    else:
        if not uint8(stor18.field_0):
            require msg.sender == sellerAddress
            require uint8(stor18.field_8)
            if sub_df0fdcdc:
                require block.timestamp < sub_df0fdcdc
        else:
            if sub_6182fab3:
                if block.timestamp >= sub_6182fab3:
                    require msg.sender == sellerAddress
                    require uint8(stor18.field_8)
                    if sub_df0fdcdc:
                        require block.timestamp < sub_df0fdcdc
    require arg1 > 0
    if msg.sender == buyerAddress:
        sub_1bdfca01 = arg1
    else:
        if msg.sender == sellerAddress:
            sub_78561939 = arg1
    emit 0xbbee2154: msg.sender, arg1
}

function sub_f797efda(?) {
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    if buyerAddress != msg.sender:
        require msg.sender == sellerAddress
        require uint8(stor18.field_8)
        if sub_df0fdcdc:
            require block.timestamp < sub_df0fdcdc
    else:
        if not uint8(stor18.field_0):
            require msg.sender == sellerAddress
            require uint8(stor18.field_8)
            if sub_df0fdcdc:
                require block.timestamp < sub_df0fdcdc
        else:
            if sub_6182fab3:
                if block.timestamp >= sub_6182fab3:
                    require msg.sender == sellerAddress
                    require uint8(stor18.field_8)
                    if sub_df0fdcdc:
                        require block.timestamp < sub_df0fdcdc
    if buyerAddress != msg.sender:
        sub_78561939 = 0
        sub_df0fdcdc = 0
        Mask(248, 0, stor18.field_8) = 0
    else:
        sub_1bdfca01 = 0
        sub_6182fab3 = 0
        uint8(stor18.field_0) = 0
    emit 0x82229214: msg.sender
}

function sub_37b83161(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd24fb955 with:
            gas gas_remaining wei
           args uint256(market), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (arg1 + (ext_call.return_data[0] / 2) + ext_call.return_data[0])
}

function sub_36b8153c(?) payable {
    require arg6 >= 1
    feesAddr = arg3
    uint256(market) = arg4
    sub_3c79ad64 = arg6
    sub_7185b30c = arg6
    sub_22e20d2a = arg6
    strikePrice = arg5
    sub_c93c88d7 = arg5
    sub_6a8100b2 = arg5
    stor1 = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd24fb955 with:
            gas gas_remaining wei
           args uint256(market), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value > (3 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
    require msg.value - (3 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) >= 20 * arg6 / 100
    require msg.value - (3 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) <= 500 * arg6 / 100
    if not arg7:
        sellerAddress = arg2
        sub_2d4dce7d = msg.value - (3 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2)
    else:
        buyerAddress = arg2
        sub_9dec1430 = msg.value - (3 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2)
    emit 0x69d73ba3: address(arg2), uint256(market), sub_3c79ad64, msg.value
}

function sub_818197ea(?) payable {
    if buyerAddress != msg.sender:
        require msg.sender == sellerAddress
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    if buyerAddress != msg.sender:
        if sellerAddress != msg.sender:
            require sellerAddress != msg.sender
        else:
            if not uint8(stor18.field_8):
                require not uint8(stor18.field_8)
            else:
                if not sub_df0fdcdc:
                    require sub_df0fdcdc
                else:
                    require block.timestamp >= sub_df0fdcdc
    else:
        if not uint8(stor18.field_0):
            if sellerAddress != msg.sender:
                require sellerAddress != msg.sender
            else:
                if not uint8(stor18.field_8):
                    require not uint8(stor18.field_8)
                else:
                    if not sub_df0fdcdc:
                        require sub_df0fdcdc
                    else:
                        require block.timestamp >= sub_df0fdcdc
        else:
            if not sub_6182fab3:
                require sub_6182fab3
            else:
                if block.timestamp < sub_6182fab3:
                    require block.timestamp >= sub_6182fab3
                else:
                    if sellerAddress != msg.sender:
                        require sellerAddress != msg.sender
                    else:
                        if not uint8(stor18.field_8):
                            require not uint8(stor18.field_8)
                        else:
                            if not sub_df0fdcdc:
                                require sub_df0fdcdc
                            else:
                                require block.timestamp >= sub_df0fdcdc
    require arg1 > 0
    if arg2 > block.timestamp:
        if msg.sender == buyerAddress:
            uint8(stor18.field_0) = 1
            sub_1bdfca01 = arg1
            sub_6182fab3 = arg2
        else:
            if msg.sender == sellerAddress:
                Mask(248, 0, stor18.field_8) = 1
                sub_78561939 = arg1
                sub_df0fdcdc = arg2
        require ext_code.size(stor1)
        staticcall stor1.0x8319a87b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x62c59704 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb5d6baf6: msg.sender, arg1, arg2
    else:
        if msg.sender == buyerAddress:
            uint8(stor18.field_0) = 1
            sub_1bdfca01 = arg1
            sub_6182fab3 = 0
        else:
            if msg.sender == sellerAddress:
                Mask(248, 0, stor18.field_8) = 1
                sub_78561939 = arg1
                sub_df0fdcdc = 0
        require ext_code.size(stor1)
        staticcall stor1.0x8319a87b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x62c59704 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb5d6baf6: msg.sender, arg1, 0
}

function topup() payable {
    require msg.value >= 1
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    if msg.sender == buyerAddress:
        if not uint8(stor18.field_0):
            if sellerAddress != msg.sender:
                require sellerAddress != msg.sender
            else:
                if not uint8(stor18.field_8):
                    require not uint8(stor18.field_8)
                else:
                    if not sub_df0fdcdc:
                        require sub_df0fdcdc
                    else:
                        require block.timestamp >= sub_df0fdcdc
        else:
            if not sub_6182fab3:
                require sub_6182fab3
            else:
                if block.timestamp < sub_6182fab3:
                    require block.timestamp >= sub_6182fab3
                else:
                    if sellerAddress != msg.sender:
                        require sellerAddress != msg.sender
                    else:
                        if not uint8(stor18.field_8):
                            require not uint8(stor18.field_8)
                        else:
                            if not sub_df0fdcdc:
                                require sub_df0fdcdc
                            else:
                                require block.timestamp >= sub_df0fdcdc
    else:
        require msg.sender == sellerAddress
        if buyerAddress != msg.sender:
            if sellerAddress != msg.sender:
                require sellerAddress != msg.sender
            else:
                if not uint8(stor18.field_8):
                    require not uint8(stor18.field_8)
                else:
                    if not sub_df0fdcdc:
                        require sub_df0fdcdc
                    else:
                        require block.timestamp >= sub_df0fdcdc
        else:
            if not uint8(stor18.field_0):
                if sellerAddress != msg.sender:
                    require sellerAddress != msg.sender
                else:
                    if not uint8(stor18.field_8):
                        require not uint8(stor18.field_8)
                    else:
                        if not sub_df0fdcdc:
                            require sub_df0fdcdc
                        else:
                            require block.timestamp >= sub_df0fdcdc
            else:
                if not sub_6182fab3:
                    require sub_6182fab3
                else:
                    if block.timestamp < sub_6182fab3:
                        require block.timestamp >= sub_6182fab3
                    else:
                        if sellerAddress != msg.sender:
                            require sellerAddress != msg.sender
                        else:
                            if not uint8(stor18.field_8):
                                require not uint8(stor18.field_8)
                            else:
                                if not sub_df0fdcdc:
                                    require sub_df0fdcdc
                                else:
                                    require block.timestamp >= sub_df0fdcdc
    if msg.sender == buyerAddress:
        require sub_9dec1430 + msg.value >= 20 * sub_3c79ad64 / 100
        require sub_9dec1430 + msg.value <= 500 * sub_3c79ad64 / 100
        if buyerAddress != msg.sender:
            sub_2d4dce7d = sub_9dec1430 + msg.value
        else:
            sub_9dec1430 += msg.value
        emit 0xf304610a: address(msg.sender), msg.value, 0, sub_9dec1430 + msg.value
    else:
        require sub_2d4dce7d + msg.value >= 20 * sub_3c79ad64 / 100
        require sub_2d4dce7d + msg.value <= 500 * sub_3c79ad64 / 100
        if buyerAddress != msg.sender:
            sub_2d4dce7d += msg.value
        else:
            sub_9dec1430 = sub_2d4dce7d + msg.value
        emit 0xf304610a: address(msg.sender), msg.value, 0, sub_2d4dce7d + msg.value
}

function deposit() payable {
    require not uint8(stor18.field_16)
    require not uint8(stor18.field_24)
    require buyerAddress != msg.sender
    require sellerAddress != msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd24fb955 with:
            gas gas_remaining wei
           args uint256(market), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value > (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) + ext_call.return_data[0]
    require msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0] >= 20 * sub_3c79ad64 / 100
    require msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0] <= 500 * sub_3c79ad64 / 100
    if buyerAddress:
        sellerAddress = msg.sender
        sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
    else:
        buyerAddress = msg.sender
        sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd24fb955 with:
            gas gas_remaining wei
           args uint256(market), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x276cbdcf with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args 0, uint32(stor4), sub_3c79ad64, strikePrice, sub_9dec1430, sub_2d4dce7d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call feesAddr with:
       value (5 * sub_3c79ad64 / 100 / 10) + (3 * sub_3c79ad64 / 100 / 10) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(240, 0, stor18.field_16) = 1
    require ext_code.size(stor1)
    staticcall stor1.0x8319a87b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x81e8dfa2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x94bdcbfe: address(msg.sender), msg.value, buyerAddress, sellerAddress, uint256(market), sub_3c79ad64, strikePrice, sub_9dec1430, sub_2d4dce7d
}

function sub_7260a34e(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x18d95b86: uint256(market)
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x61da1439 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require sub_3c79ad64
    require sub_3c79ad64
    if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
        if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18):
            require ext_call.return_data[0] >= (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_3c79ad64 / 100 * 10^18)
    else:
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_3c79ad64 / 100 * 10^18)
    require sub_3c79ad64
    if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
        if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18):
            call buyerAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: buyerAddress, eth.balance(this.address)
            else:
                withdrawable[stor2] = eth.balance(this.address)
                emit 0x4ef7babf: buyerAddress, eth.balance(this.address)
            Mask(232, 0, stor18.field_24) = 1
            if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18):
                emit 0xd65b0ea1: buyerAddress, eth.balance(this.address), 0
            else:
                emit 0xd65b0ea1: buyerAddress, 0, eth.balance(this.address)
        else:
            call sellerAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: sellerAddress, eth.balance(this.address)
            else:
                withdrawable[stor3] = eth.balance(this.address)
                emit 0x4ef7babf: sellerAddress, eth.balance(this.address)
            Mask(232, 0, stor18.field_24) = 1
            if ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18):
                emit 0xd65b0ea1: sellerAddress, eth.balance(this.address), 0
            else:
                emit 0xd65b0ea1: sellerAddress, 0, eth.balance(this.address)
    else:
        if ext_call.return_data[0] > 0:
            call buyerAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: buyerAddress, eth.balance(this.address)
            else:
                withdrawable[stor2] = eth.balance(this.address)
                emit 0x4ef7babf: buyerAddress, eth.balance(this.address)
            Mask(232, 0, stor18.field_24) = 1
            if ext_call.return_data[0] > 0:
                emit 0xd65b0ea1: buyerAddress, eth.balance(this.address), 0
            else:
                emit 0xd65b0ea1: buyerAddress, 0, eth.balance(this.address)
        else:
            call sellerAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: sellerAddress, eth.balance(this.address)
            else:
                withdrawable[stor3] = eth.balance(this.address)
                emit 0x4ef7babf: sellerAddress, eth.balance(this.address)
            Mask(232, 0, stor18.field_24) = 1
            if ext_call.return_data[0] > 0:
                emit 0xd65b0ea1: sellerAddress, eth.balance(this.address), 0
            else:
                emit 0xd65b0ea1: sellerAddress, 0, eth.balance(this.address)
}

function withdraw(uint256 arg1) payable {
    require arg1 >= 1
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    if msg.sender == buyerAddress:
        if not uint8(stor18.field_0):
            if sellerAddress != msg.sender:
                require sellerAddress != msg.sender
            else:
                if not uint8(stor18.field_8):
                    require not uint8(stor18.field_8)
                else:
                    if not sub_df0fdcdc:
                        require sub_df0fdcdc
                    else:
                        require block.timestamp >= sub_df0fdcdc
        else:
            if not sub_6182fab3:
                require sub_6182fab3
            else:
                if block.timestamp < sub_6182fab3:
                    require block.timestamp >= sub_6182fab3
                else:
                    if sellerAddress != msg.sender:
                        require sellerAddress != msg.sender
                    else:
                        if not uint8(stor18.field_8):
                            require not uint8(stor18.field_8)
                        else:
                            if not sub_df0fdcdc:
                                require sub_df0fdcdc
                            else:
                                require block.timestamp >= sub_df0fdcdc
    else:
        require msg.sender == sellerAddress
        if buyerAddress != msg.sender:
            if sellerAddress != msg.sender:
                require sellerAddress != msg.sender
            else:
                if not uint8(stor18.field_8):
                    require not uint8(stor18.field_8)
                else:
                    if not sub_df0fdcdc:
                        require sub_df0fdcdc
                    else:
                        require block.timestamp >= sub_df0fdcdc
        else:
            if not uint8(stor18.field_0):
                if sellerAddress != msg.sender:
                    require sellerAddress != msg.sender
                else:
                    if not uint8(stor18.field_8):
                        require not uint8(stor18.field_8)
                    else:
                        if not sub_df0fdcdc:
                            require sub_df0fdcdc
                        else:
                            require block.timestamp >= sub_df0fdcdc
            else:
                if not sub_6182fab3:
                    require sub_6182fab3
                else:
                    if block.timestamp < sub_6182fab3:
                        require block.timestamp >= sub_6182fab3
                    else:
                        if sellerAddress != msg.sender:
                            require sellerAddress != msg.sender
                        else:
                            if not uint8(stor18.field_8):
                                require not uint8(stor18.field_8)
                            else:
                                if not sub_df0fdcdc:
                                    require sub_df0fdcdc
                                else:
                                    require block.timestamp >= sub_df0fdcdc
    if msg.sender == buyerAddress:
        require sub_9dec1430 - arg1 >= 1
        require arg1 <= sub_9dec1430
        require ext_code.size(stor1)
        staticcall stor1.0x7fe955d4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                gas gas_remaining wei
               args uint256(market)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.value >= ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0x7fe955d4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                gas gas_remaining wei
               args uint256(market)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x18d95b86: uint256(market)
        require ext_code.size(stor1)
        staticcall stor1.0x7fe955d4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x61da1439 with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args uint256(market)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require sub_3c79ad64
        require sub_3c79ad64
        if msg.sender == buyerAddress:
            if (100 * 10^18 * sub_9dec1430 * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                require ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - ((100 * 10^18 * sub_9dec1430 * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_3c79ad64 / 100 * 10^18)
            else:
                require ext_call.return_data[0] > 0
            require ext_call.return_data[0] < (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_3c79ad64 / 100 * 10^18)
        else:
            if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                require ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18)
            else:
                require ext_call.return_data[0] > 0
            require ext_call.return_data[0] < (95 * 10^18 * strikePrice / 100 * 10^18) + ((100 * 10^18 * sub_9dec1430 * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_3c79ad64 / 100 * 10^18)
        require strikePrice
        if msg.sender == buyerAddress:
            require sub_9dec1430 - arg1 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            require sub_9dec1430 - arg1 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 20 * sub_3c79ad64 / 100
            require sub_9dec1430 - arg1 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) <= 500 * sub_3c79ad64 / 100
        else:
            require sub_9dec1430 - arg1 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            require sub_9dec1430 - arg1 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 20 * sub_3c79ad64 / 100
            require sub_9dec1430 - arg1 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) <= 500 * sub_3c79ad64 / 100
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0xae0c9148: msg.sender, arg1
        else:
            withdrawable[address(msg.sender)] = arg1
            emit 0x4ef7babf: msg.sender, arg1
        if buyerAddress != msg.sender:
            sub_2d4dce7d = sub_9dec1430 - arg1
        else:
            sub_9dec1430 -= arg1
        emit 0xf304610a: address(msg.sender), arg1, 1, sub_9dec1430 - arg1
    else:
        require sub_2d4dce7d - arg1 >= 1
        require arg1 <= sub_2d4dce7d
        require ext_code.size(stor1)
        staticcall stor1.0x7fe955d4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                gas gas_remaining wei
               args uint256(market)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.value >= ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0x7fe955d4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                gas gas_remaining wei
               args uint256(market)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x18d95b86: uint256(market)
        require ext_code.size(stor1)
        staticcall stor1.0x7fe955d4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x61da1439 with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args uint256(market)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require sub_3c79ad64
        require sub_3c79ad64
        if msg.sender == buyerAddress:
            if (100 * 10^18 * sub_2d4dce7d * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                require ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - ((100 * 10^18 * sub_2d4dce7d * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_3c79ad64 / 100 * 10^18)
            else:
                require ext_call.return_data[0] > 0
            require ext_call.return_data[0] < (95 * 10^18 * strikePrice / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * strikePrice / sub_3c79ad64 / 100 * 10^18)
        else:
            if 100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * strikePrice / 100 * 10^18:
                require ext_call.return_data[0] > (105 * 10^18 * strikePrice / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * strikePrice / sub_3c79ad64 / 100 * 10^18)
            else:
                require ext_call.return_data[0] > 0
            require ext_call.return_data[0] < (95 * 10^18 * strikePrice / 100 * 10^18) + ((100 * 10^18 * sub_2d4dce7d * strikePrice) - (100 * 10^18 * arg1 * strikePrice) / sub_3c79ad64 / 100 * 10^18)
        require strikePrice
        if msg.sender == buyerAddress:
            require sub_2d4dce7d - arg1 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            require sub_2d4dce7d - arg1 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 20 * sub_3c79ad64 / 100
            require sub_2d4dce7d - arg1 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) <= 500 * sub_3c79ad64 / 100
        else:
            require sub_2d4dce7d - arg1 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
            require sub_2d4dce7d - arg1 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 20 * sub_3c79ad64 / 100
            require sub_2d4dce7d - arg1 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) <= 500 * sub_3c79ad64 / 100
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0xae0c9148: msg.sender, arg1
        else:
            withdrawable[address(msg.sender)] = arg1
            emit 0x4ef7babf: msg.sender, arg1
        if buyerAddress != msg.sender:
            sub_2d4dce7d -= arg1
        else:
            sub_9dec1430 = sub_2d4dce7d - arg1
        emit 0xf304610a: address(msg.sender), arg1, 1, sub_2d4dce7d - arg1
}

function sub_93a96512(?) payable {
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    if buyerAddress != msg.sender:
        require msg.sender == sellerAddress
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x18d95b86: uint256(market)
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x61da1439 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require strikePrice
    require sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
    require strikePrice
    require sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
    if eth.balance(this.address) - sub_9dec1430 - sub_2d4dce7d != ext_call.return_data[0]:
        emit 0xec6a0b86: (eth.balance(this.address) - sub_9dec1430 - sub_2d4dce7d)
    call feesAddr with:
       value eth.balance(this.address) - sub_9dec1430 - sub_2d4dce7d wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.sender == buyerAddress:
        if buyerAddress != msg.sender:
            call buyerAddress with:
               value sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                emit 0xae0c9148: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                withdrawable[stor2] = sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                withdrawable[stor3] = sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            require ext_code.size(stor1)
            staticcall stor1.0x3b47a9ac with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x5f28cb74 with:
                    gas gas_remaining wei
                   args uint256(market), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(ext_call.return_data[0]) > 0:
                require ext_code.size(stor1)
                staticcall stor1.0x3b47a9ac with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args eth.balance(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(ext_call.return_data[0]) with:
                   value eth.balance(ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
            Mask(224, 0, stor18.field_32) = 1
            Mask(232, 0, stor18.field_24) = 1
            if buyerAddress != msg.sender:
                emit 0xe24b2cdf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                emit 0xe24b2cdf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
        else:
            call buyerAddress with:
               value sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                emit 0xae0c9148: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                withdrawable[stor2] = sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                withdrawable[stor3] = sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            require ext_code.size(stor1)
            staticcall stor1.0x3b47a9ac with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x5f28cb74 with:
                    gas gas_remaining wei
                   args uint256(market), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(ext_call.return_data[0]) > 0:
                require ext_code.size(stor1)
                staticcall stor1.0x3b47a9ac with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args eth.balance(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(ext_call.return_data[0]) with:
                   value eth.balance(ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
            Mask(224, 0, stor18.field_32) = 1
            Mask(232, 0, stor18.field_24) = 1
            if buyerAddress != msg.sender:
                emit 0xe24b2cdf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                emit 0xe24b2cdf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_9dec1430) + (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
    else:
        if buyerAddress != msg.sender:
            call buyerAddress with:
               value sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                emit 0xae0c9148: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                withdrawable[stor2] = sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                withdrawable[stor3] = sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            require ext_code.size(stor1)
            staticcall stor1.0x3b47a9ac with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x5f28cb74 with:
                    gas gas_remaining wei
                   args uint256(market), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(ext_call.return_data[0]) > 0:
                require ext_code.size(stor1)
                staticcall stor1.0x3b47a9ac with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args eth.balance(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(ext_call.return_data[0]) with:
                   value eth.balance(ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
            Mask(224, 0, stor18.field_32) = 1
            Mask(232, 0, stor18.field_24) = 1
            if buyerAddress != msg.sender:
                emit 0xe24b2cdf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                emit 0xe24b2cdf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
        else:
            call buyerAddress with:
               value sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0xae0c9148: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                emit 0xae0c9148: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                withdrawable[stor2] = sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100) wei
                     gas 2300 * is_zero(value) wei
                withdrawable[stor3] = sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
                emit 0x4ef7babf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            require ext_code.size(stor1)
            staticcall stor1.0x3b47a9ac with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x5f28cb74 with:
                    gas gas_remaining wei
                   args uint256(market), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(ext_call.return_data[0]) > 0:
                require ext_code.size(stor1)
                staticcall stor1.0x3b47a9ac with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args eth.balance(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(ext_call.return_data[0]) with:
                   value eth.balance(ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
            Mask(224, 0, stor18.field_32) = 1
            Mask(232, 0, stor18.field_24) = 1
            if buyerAddress != msg.sender:
                emit 0xe24b2cdf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
            else:
                emit 0xe24b2cdf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) - ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100), sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) + ((5 * sub_2d4dce7d) - (5 * 100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * ext_call.return_data[0]) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) / 100)
}

function buy(bool arg1) payable {
    require bool(uint8(stor18.field_16)) == 1
    require not uint8(stor18.field_24)
    if arg1:
        if buyerAddress != buyerAddress:
            require buyerAddress == sellerAddress
            require uint8(stor18.field_8)
            if sub_df0fdcdc:
                require block.timestamp < sub_df0fdcdc
        else:
            if not uint8(stor18.field_0):
                require buyerAddress == sellerAddress
                require uint8(stor18.field_8)
                if sub_df0fdcdc:
                    require block.timestamp < sub_df0fdcdc
            else:
                if sub_6182fab3:
                    if block.timestamp >= sub_6182fab3:
                        require buyerAddress == sellerAddress
                        require uint8(stor18.field_8)
                        if sub_df0fdcdc:
                            require block.timestamp < sub_df0fdcdc
    else:
        if sellerAddress != buyerAddress:
            require sellerAddress == sellerAddress
            require uint8(stor18.field_8)
            if sub_df0fdcdc:
                require block.timestamp < sub_df0fdcdc
        else:
            if not uint8(stor18.field_0):
                require sellerAddress == sellerAddress
                require uint8(stor18.field_8)
                if sub_df0fdcdc:
                    require block.timestamp < sub_df0fdcdc
            else:
                if sub_6182fab3:
                    if block.timestamp >= sub_6182fab3:
                        require sellerAddress == sellerAddress
                        require uint8(stor18.field_8)
                        if sub_df0fdcdc:
                            require block.timestamp < sub_df0fdcdc
    if msg.sender == buyerAddress:
        require buyerAddress != msg.sender
    else:
        require sellerAddress != msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x3b47a9ac with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd24fb955 with:
            gas gas_remaining wei
           args uint256(market), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value > (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) + ext_call.return_data[0]
    require msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0] >= 20 * sub_3c79ad64 / 100
    require msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0] <= 500 * sub_3c79ad64 / 100
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
            gas gas_remaining wei
           args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x18d95b86: uint256(market)
    require ext_code.size(stor1)
    staticcall stor1.0x7fe955d4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x61da1439 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
        args uint256(market)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require sub_3c79ad64
    require sub_3c79ad64
    if arg1:
        if (100 * 10^18 * msg.value * sub_1bdfca01) - (100 * 10^18 * 5 * sub_3c79ad64 / 100 / 10 * sub_1bdfca01) - (100 * 10^18 * ext_call.return_data[0] / 2 * sub_1bdfca01) - (100 * 10^18 * ext_call.return_data[0] * sub_1bdfca01) / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * sub_1bdfca01 / 100 * 10^18:
            require ext_call.return_data[0] > (105 * 10^18 * sub_1bdfca01 / 100 * 10^18) - ((100 * 10^18 * msg.value * sub_1bdfca01) - (100 * 10^18 * 5 * sub_3c79ad64 / 100 / 10 * sub_1bdfca01) - (100 * 10^18 * ext_call.return_data[0] / 2 * sub_1bdfca01) - (100 * 10^18 * ext_call.return_data[0] * sub_1bdfca01) / sub_3c79ad64 / 100 * 10^18)
        else:
            require ext_call.return_data[0] > 0
        require ext_call.return_data[0] < (95 * 10^18 * sub_1bdfca01 / 100 * 10^18) + (100 * 10^18 * sub_2d4dce7d * sub_1bdfca01 / sub_3c79ad64 / 100 * 10^18)
        require strikePrice
        if arg1:
            if arg1:
                require sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call buyerAddress with:
                   value sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor2] = sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_1bdfca01
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_1bdfca01
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
            else:
                require sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call buyerAddress with:
                   value sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: buyerAddress, sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor2] = sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: buyerAddress, sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_1bdfca01
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_1bdfca01
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18, sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
        else:
            if arg1:
                require sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call sellerAddress with:
                   value sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: sellerAddress, sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor3] = sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: sellerAddress, sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_1bdfca01
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_1bdfca01
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18, sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
            else:
                require sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor3] = sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_1bdfca01
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_1bdfca01
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_1bdfca01
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_1bdfca01 / strikePrice / 100 * 10^18, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_1bdfca01) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
    else:
        if 100 * 10^18 * sub_9dec1430 * sub_78561939 / sub_3c79ad64 / 100 * 10^18 <= 105 * 10^18 * sub_78561939 / 100 * 10^18:
            require ext_call.return_data[0] > (105 * 10^18 * sub_78561939 / 100 * 10^18) - (100 * 10^18 * sub_9dec1430 * sub_78561939 / sub_3c79ad64 / 100 * 10^18)
        else:
            require ext_call.return_data[0] > 0
        require ext_call.return_data[0] < (95 * 10^18 * sub_78561939 / 100 * 10^18) + ((100 * 10^18 * msg.value * sub_78561939) - (100 * 10^18 * 5 * sub_3c79ad64 / 100 / 10 * sub_78561939) - (100 * 10^18 * ext_call.return_data[0] / 2 * sub_78561939) - (100 * 10^18 * ext_call.return_data[0] * sub_78561939) / sub_3c79ad64 / 100 * 10^18)
        require strikePrice
        if arg1:
            if arg1:
                require sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call buyerAddress with:
                   value sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor2] = sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: buyerAddress, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_78561939
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_78561939
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18, sub_9dec1430 + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
            else:
                require sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call buyerAddress with:
                   value sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: buyerAddress, sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor2] = sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: buyerAddress, sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_78561939
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_78561939
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18, sub_9dec1430 - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
        else:
            if arg1:
                require sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call sellerAddress with:
                   value sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: sellerAddress, sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor3] = sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: sellerAddress, sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_78561939
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_78561939
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18, sub_2d4dce7d + (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
            else:
                require sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) >= 0
                call sellerAddress with:
                   value sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0xae0c9148: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                else:
                    withdrawable[stor3] = sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                    emit 0x4ef7babf: sellerAddress, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18)
                require ext_code.size(stor1)
                staticcall stor1.0x7fe955d4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x5eedf3d7 with:
                        gas gas_remaining wei
                       args uint256(market)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call feesAddr with:
                   value (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require strikePrice
                if not arg1:
                    sellerAddress = msg.sender
                    sub_2d4dce7d = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_6a8100b2 = sub_78561939
                    sub_22e20d2a = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_9dec1430 = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_78561939 = 0
                    sub_df0fdcdc = 0
                    Mask(248, 0, stor18.field_8) = 0
                else:
                    buyerAddress = msg.sender
                    sub_9dec1430 = msg.value - (5 * sub_3c79ad64 / 100 / 10) - (ext_call.return_data[0] / 2) - ext_call.return_data[0]
                    sub_c93c88d7 = sub_78561939
                    sub_7185b30c = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_2d4dce7d = eth.balance(this.address) - msg.value + (5 * sub_3c79ad64 / 100 / 10) + (ext_call.return_data[0] / 2)
                    strikePrice = sub_78561939
                    sub_3c79ad64 = sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18
                    sub_1bdfca01 = 0
                    sub_6182fab3 = 0
                    uint8(stor18.field_0) = 0
                require ext_code.size(stor1)
                staticcall stor1.0x8319a87b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x81e8dfa2 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xd9824f54: msg.sender, ext_call.return_data[32], sub_3c79ad64 * 100 * 10^18 * sub_78561939 / strikePrice / 100 * 10^18, sub_2d4dce7d - (100 * 10^18 * sub_3c79ad64 * (100 * 10^18 * sub_78561939) - (100 * 10^18 * strikePrice) / strikePrice / 100 * 10^18 / 100 * 10^18), msg.value
}



}
