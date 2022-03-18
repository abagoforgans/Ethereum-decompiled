contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor259;
uint256 stor260;
uint256 stor261;
uint256 stor262;
uint256 stor263;
uint8 stor265;
uint8 stor265; offset 8
uint8 stor265; offset 16

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor259 = msg.sender or Mask(96, 160, stor259)
    stor260 = code.data[6380 len 32]
    stor261 = code.data[6412 len 32]
    if code.data[6444 len 32]:
        stor262 = code.data[6444 len 32]
    else:
        stor262 = 1
    stor263 = block.timestamp
    uint8(stor265.field_0) = 0
    uint8(stor265.field_8) = 1
    uint8(stor265.field_16) = 0
    return code.data[307 len 6073]
}



// =====================  Runtime code  =====================


address userAddress;
uint256 stor0;
array of uint256 stor1;
array of struct stor2;
mapping of uint256 stor258;
address owner;
uint256 stor259;
uint256 deposit;
uint256 price;
uint256 sub_ae750fb0;
uint256 openTime;
uint256 closeTime;
uint8 sub_a6304952;
uint8 sub_f3566b55; offset 8
uint8 sub_60ed1905; offset 16
uint256 stor265; offset 8

function user() payable {
    return address(userAddress)
}

function sub_60ed1905(?) payable {
    return sub_60ed1905
}

function closeTime() payable {
    return closeTime
}

function owner() payable {
    return address(owner)
}

function sub_90491f1b(?) payable {
    return stor1.length
}

function price() payable {
    return price
}

function sub_a6304952(?) payable {
    return sub_a6304952
}

function sub_ae750fb0(?) payable {
    return sub_ae750fb0
}

function openTime() payable {
    return openTime
}

function deposit() payable {
    return deposit
}

function sub_f3566b55(?) payable {
    return sub_f3566b55
}

function _fallback() payable {
  stop
}

function isSubUser(address arg1) payable {
    return (stor258[address(arg1)] > 0)
}

function setPrice(uint256 arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    price = arg1
}

function setDeposit(uint256 arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    deposit = arg1
}

function setTimeBlock(uint256 arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    sub_ae750fb0 = arg1
}

function setRentable(bool arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    stor265 = Mask(248, 0, arg1)
}

function isAUser(address arg1) payable {
    if msg.sender == address(userAddress):
        return True
    return (stor258[address(arg1)] > 0)
}

function costs() payable {
    require msg.value <= 0
    return ((block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0)
}

function open() payable {
    if address(userAddress) != msg.sender:
        require stor258[address(msg.sender)] > 0
    require msg.value <= 0
    emit Open()
}

function close() payable {
    if address(userAddress) != msg.sender:
        require stor258[address(msg.sender)] > 0
    require msg.value <= 0
    emit Close()
}

function changeOwner(address arg1) payable {
    require msg.sender == address(owner)
    require msg.value <= 0
    uint256(stor259) = arg1 or Mask(96, 160, uint256(stor259))
}

function rent() payable {
    require sub_f3566b55
    require not sub_a6304952
    require msg.value == deposit
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    openTime = block.timestamp
    sub_a6304952 = 1
}

function removeSubUser(address arg1) payable {
    if address(userAddress) != msg.sender:
    if not stor258[address(arg1)]:
    require stor258[address(arg1)] < 256
    stor2[stor258[address(arg1)]].field_0 = 0
    stor258[address(arg1)] = 0
    # nil
}

function payOneTimeFee() payable {
    call 0xaabbccddeeff0011223344556677889900aabbcc.0x1277e24f with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    require ext_call.return_data[0]
    sub_60ed1905 = 1
}

function addSubUser(address arg1) payable {
    if address(userAddress) != msg.sender:
    if stor258[address(arg1)] > 0:
    if stor1.length >= 250:
        # nil
    else:
        stor1.length++
        require stor1.length < 256
        stor2[stor1.length].field_0 = arg1
        stor2[stor1.length].field_160 = 0
        stor258[address(arg1)] = stor1.length
        emit SubUserAdded(arg1);
}

function changeSubUser(address arg1, address arg2) payable {
    if msg.sender == address(userAddress):
        if stor258[address(arg2)] <= 0:
            if stor258[address(arg1)]:
                require stor258[address(arg1)] < 256
                stor2[stor258[address(arg1)]].field_0 = arg2
                stor2[stor258[address(arg1)]].field_160 = 0
                stor258[address(arg1)] = 0
                stor258[address(arg2)] = stor258[address(arg1)]
                emit SubUserChanged(address(arg1), arg2);
}

function returnToOwner() payable {
    require msg.sender == address(owner)
    require sub_a6304952
    require msg.value <= 0
    if (block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 > deposit:
        if sub_60ed1905:
            call address(owner) with:
               value (block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 wei
                 gas 0 wei
        else:
            call 0xff.getFeeDivisor() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            call 0xff with:
               value (block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 / ext_call.return_data[0] wei
                 gas 0 wei
            call address(owner) with:
               value ((block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0) - ((block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 / ext_call.return_data[0]) wei
                 gas 0 wei
        address(userAddress) = address(owner)
}

function returnIt() payable {
    if msg.sender == address(userAddress):
        require msg.value <= 0
        if (block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 > deposit:
            if sub_60ed1905:
                call address(owner) with:
                   value deposit wei
                     gas 0 wei
            else:
                call 0xff.getFeeDivisor() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call 0xff with:
                   value deposit / ext_call.return_data[0] wei
                     gas 0 wei
                call address(owner) with:
                   value deposit - (deposit / ext_call.return_data[0]) wei
                     gas 0 wei
        else:
            call address(userAddress) with:
               value deposit - ((block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0) wei
                 gas 0 wei
            if sub_60ed1905:
                call address(owner) with:
                   value (block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 wei
                     gas 0 wei
            else:
                call 0xff.getFeeDivisor() with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call 0xff with:
                   value (block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 / ext_call.return_data[0] wei
                     gas 0 wei
                call address(owner) with:
                   value ((block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0) - ((block.timestamp * price) - (openTime * price) + (sub_ae750fb0 * price) / sub_ae750fb0 / ext_call.return_data[0]) wei
                     gas 0 wei
        idx = 1
        while uint8(idx) <= stor1.length:
            require idx < 256
            mem[0] = stor2[idx].field_0
            mem[32] = 258
            stor258[stor2[idx].field_0] = 0
            idx = idx + 1
            continue 
        s = 2
        while 258 > None + 1:
            stor1[None] = 0
            s = None + 2
            continue 
        stor1.length = 0
        address(userAddress) = address(owner)
        sub_a6304952 = 0
        emit Close()
}



}
