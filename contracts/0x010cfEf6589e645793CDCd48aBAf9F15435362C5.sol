contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
array of uint256 stor4;
uint256 stor5;
uint256 stor6; offset 8

function _fallback() payable {
    mem[96 len -2232] = code.data[2540 len -2232]
    mem[64] = -2136
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = mem[96]
    stor6 = mem[193 len 31]
    stor5 = mem[128]
    stor4.length = (2 * mem[mem[160] + 96]) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[308 len 2232]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address sub_c1a45281Address;
uint256 stor1;
address currentCustomerAddress;
uint256 stor2;
uint256 sub_55dfd3dc;
array of uint256 metadata;
uint256 sub_ceb751da;
uint8 state;
uint8 autoTransfer; offset 8
uint256 stor6; offset 8
uint256 stor6;
uint256 earned;

function autoTransfer() payable {
    return autoTransfer
}

function metadata() payable {
    return metadata[0 len metadata.length]
}

function sub_55dfd3dc(?) payable {
    return sub_55dfd3dc
}

function currentCustomer() payable {
    return address(currentCustomerAddress)
}

function owner() payable {
    return address(owner)
}

function state() payable {
    return state
}

function sub_c1a45281(?) payable {
    return address(sub_c1a45281Address)
}

function sub_ceb751da(?) payable {
    return sub_ceb751da
}

function earned() payable {
    return earned
}

function sub_a9365aa6(?) payable {
    if block.timestamp > sub_55dfd3dc:
        return 0
    return 1
}

function sub_8c8dc93e(?) payable {
    Mask(248, 0, stor6.field_8) = Mask(248, 0, arg1)
    emit 0x2a8f85a7: arg1
}

function sub_2e084adb(?) payable {
    if address(owner) != msg.sender:
        sub_ceb751da = arg1
        emit 0x6de720c3: arg1
}

function setState(bool arg1) payable {
    if address(owner) != msg.sender:
        uint256(stor6.field_0) = arg1 or Mask(248, 8, uint256(stor6.field_0))
        emit 0x46d2007f: arg1
}

function setMetadata(string arg1) payable {
    if address(owner) != msg.sender:
        metadata[] = Array(len=arg1.length, data=arg1[all])
        emit 0x266fe1d2: Array(len=arg1.length, data=arg1[all])
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        require address(owner) != arg1
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        emit 0x60e854de: arg1
}

function sub_8744d648(?) payable {
    if address(owner) != msg.sender:
        require address(sub_c1a45281Address) != arg1
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
        emit 0x3f1dcc2e: arg1
}

function sub_15521162(?) payable {
    if address(owner) != msg.sender:
        require autoTransfer != 1
        emit 0xbbe8ba9b: address(owner), eth.balance(this.address)
        call address(owner) with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_c64262f7(?) payable {
    require msg.sender == address(owner)
    require msg.sender == address(sub_c1a45281Address)
    emit 0xbbe8ba9b: address(sub_c1a45281Address), eth.balance(this.address)
    call address(sub_c1a45281Address) with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function _fallback() payable {
    require msg.value >= sub_ceb751da
    earned += msg.value
    if autoTransfer:
        call address(sub_c1a45281Address) with:
           value msg.value wei
             gas 0 wei
        emit 0x6696b820: address(sub_c1a45281Address), msg.value
    if address(currentCustomerAddress) != msg.sender:
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        sub_55dfd3dc = block.timestamp + (60 * msg.value / sub_ceb751da)
        emit 0x2efcf2d8: msg.value, msg.sender
    else:
        if sub_55dfd3dc > block.timestamp:
            sub_55dfd3dc += 60 * msg.value / sub_ceb751da
        else:
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            sub_55dfd3dc = block.timestamp + (60 * msg.value / sub_ceb751da)
            emit 0x2efcf2d8: msg.value, msg.sender
}



}
