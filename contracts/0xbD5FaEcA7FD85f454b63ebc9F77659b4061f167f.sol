contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8

function _fallback() payable {
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    Mask(248, 0, stor0.field_8) = 0
    return code.data[46 len 1160]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address stor0; offset 8
uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
  stop
}

function get_supply() payable {
    return stor1, 1
}

function sub_7988ac04(?) payable {
    return address(stor0.field_0), 1
}

function get_balance(address arg1) payable {
    return stor2[address(arg1)], 1
}

function sub_11469cdb(?) payable {
    if uint8(stor0.field_0) != 0:
        if uint8(stor0.field_0) != 1:
            return 0
        if address(stor0.field_8) != msg.sender:
            call address(stor0.field_8).0xa59c3e45 with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    else:
        if address(stor0.field_8) != msg.sender:
            if uint8(stor0.field_0) != 1:
                return 0
            if address(stor0.field_8) != msg.sender:
                call address(stor0.field_8).0xa59c3e45 with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
    uint256(stor0.field_0) = arg2 or 256 * arg1 or Mask(88, 168, uint256(stor0.field_0)) or Mask(248, 8, uint8(stor0.field_0))
    return 1
}

function sub_30dc9cee(?) payable {
    if uint8(stor0.field_0) != 0:
        if uint8(stor0.field_0) != 1:
            return 0
        if address(stor0.field_8) != msg.sender:
            call address(stor0.field_8).0xa59c3e45 with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    else:
        if address(stor0.field_8) != msg.sender:
            if uint8(stor0.field_0) != 1:
                return 0
            if address(stor0.field_8) != msg.sender:
                call address(stor0.field_8).0xa59c3e45 with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
    if arg2 + stor1 < stor1:
        return 0
    stor2[address(arg1)] += arg2
    stor1 += arg2
    emit code.data[1128 len 32]: address(arg1), arg2, 1
    return 1
}

function sub_073eb4ed(?) payable {
    if uint8(stor0.field_0) != 0:
        if uint8(stor0.field_0) != 1:
            return 0
        if address(stor0.field_8) != msg.sender:
            call address(stor0.field_8).0xa59c3e45 with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    else:
        if address(stor0.field_8) != msg.sender:
            if uint8(stor0.field_0) != 1:
                return 0
            if address(stor0.field_8) != msg.sender:
                call address(stor0.field_8).0xa59c3e45 with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
    if stor2[address(arg1)] < arg2:
        return 0
    stor2[address(arg1)] -= arg2
    stor1 -= arg2
    emit code.data[1128 len 32]: address(arg1), arg2, 0
    return 1
}

function sub_a60c3b1b(?) payable {
    if uint8(stor0.field_0) != 0:
        if uint8(stor0.field_0) != 1:
            return 0
        if address(stor0.field_8) != msg.sender:
            call address(stor0.field_8).0xa59c3e45 with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            if not ext_call.return_data[0]:
                return 0
    else:
        if address(stor0.field_8) != msg.sender:
            if uint8(stor0.field_0) != 1:
                return 0
            if address(stor0.field_8) != msg.sender:
                call address(stor0.field_8).0xa59c3e45 with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(this.address), call.func_hash
                require ext_call.success
                if not ext_call.return_data[0]:
                    return 0
    if stor2[address(arg1)] < arg3:
        return 0
    stor2[address(arg1)] -= arg3
    stor2[arg2] += arg3
    emit code.data[1128 len 32]: address(arg1), arg3, 0
    emit code.data[1128 len 32]: address(arg2), arg3, 1
    return 1
}



}
