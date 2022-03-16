contract main {


// =======================  Init code  ======================


uint256 stor0; offset 8

function _fallback() payable {
    stor0 = Mask(248, 0, msg.sender)
    return code.data[64 len 1526]
}



// =====================  Runtime code  =====================


uint8 sub_ba850a63;
address sub_604bcb3bAddress; offset 8
uint256 stor0; offset 8
mapping of address sub_00ad9433;
mapping of uint256 sub_0680bff2;

function sub_00ad9433(?) payable {
    return address(sub_00ad9433[arg1])
}

function sub_0680bff2(?) payable {
    return sub_0680bff2[address(arg1)]
}

function sub_604bcb3b(?) payable {
    return sub_604bcb3bAddress
}

function sub_ba850a63(?) payable {
    return sub_ba850a63
}

function _fallback() payable {
  stop
}

function sub_f427bd46(?) payable {
    if not sub_ba850a63:
        if sub_604bcb3bAddress != msg.sender:
            return 0
    else:
        if sub_ba850a63 != 0x100000000000000000000000000000000000000000000000000000000000000:
            return 0
        call sub_604bcb3bAddress.0xa59c3e45 with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        if not ext_call.return_data[0]:
            if sub_604bcb3bAddress != msg.sender:
                return 0
    stor0 = Mask(248, 0, arg1)
    sub_ba850a63 = arg2
    return 1
}

function sub_074e293b(?) payable {
    if not sub_ba850a63:
        if sub_604bcb3bAddress != msg.sender:
            return 0
    else:
        if sub_ba850a63 != 0x100000000000000000000000000000000000000000000000000000000000000:
            return 0
        call sub_604bcb3bAddress.0xa59c3e45 with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        if not ext_call.return_data[0]:
            if sub_604bcb3bAddress != msg.sender:
                return 0
    uint256(sub_00ad9433[arg1]) = arg2 or Mask(96, 160, uint256(sub_00ad9433[arg1]))
    sub_0680bff2[address(arg2)] = arg1
    return 1
}



}
