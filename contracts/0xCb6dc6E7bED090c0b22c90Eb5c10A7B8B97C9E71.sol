contract main {


// =======================  Init code  ======================


uint256 stor0; offset 8

function _fallback() payable {
    stor0 = Mask(248, 0, msg.sender)
    return code.data[64 len 1965]
}



// =====================  Runtime code  =====================


uint8 sub_ba850a63;
address sub_604bcb3bAddress; offset 8
uint256 stor0; offset 8
uint256 supply;
mapping of uint256 balances;

function supply() payable {
    return supply
}

function balances(address arg1) payable {
    return balances[arg1]
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

function sub_30dc9cee(?) payable {
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
    if supply + arg2 < supply:
        return 0
    balances[address(arg1)] += arg2
    supply += arg2
    return 1
}

function sub_073eb4ed(?) payable {
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
    if balances[address(arg1)] < arg2:
        return 0
    balances[address(arg1)] -= arg2
    supply -= arg2
    return 1
}

function sub_3fbe4a6b(?) payable {
    if arg1 != msg.sender:
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
    if balances[address(arg1)] < arg3:
        return 0
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    return 1
}



}
