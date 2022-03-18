contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor7;
uint8 stor8; offset 16
uint8 stor8; offset 24
uint8 stor8; offset 32

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor7 = 0
    uint8(stor8.field_16) = 0
    uint8(stor8.field_32) = 0
    uint8(stor8.field_24) = 0
    return code.data[178 len 4402]
}



// =====================  Runtime code  =====================


address initiatorAddress;
uint256 stor0;
address responderAddress;
uint256 stor1;
address sub_6ac56103Address;
uint256 stor2;
array of uint256 sub_98dae056;
array of uint256 sub_5199bdad;
uint256 sub_0cf6bc25;
uint256 sub_4052342f;
uint256 sub_5a95cf49;
uint8 sub_b8ace704;
uint8 sub_1dcc50a1; offset 8
uint8 disputed; offset 16
uint8 sub_763125e7; offset 24
uint8 sub_57372bde; offset 32
uint8 state; offset 40

function disputed() payable {
    return disputed
}

function sub_0cf6bc25(?) payable {
    return sub_0cf6bc25
}

function sub_1dcc50a1(?) payable {
    return sub_1dcc50a1
}

function responder() payable {
    return address(responderAddress)
}

function sub_4052342f(?) payable {
    return sub_4052342f
}

function sub_5199bdad(?) payable {
    return sub_5199bdad[0 len sub_5199bdad.length]
}

function sub_57372bde(?) payable {
    return sub_57372bde
}

function sub_5a95cf49(?) payable {
    return sub_5a95cf49
}

function initiator() payable {
    return address(initiatorAddress)
}

function sub_6ac56103(?) payable {
    return address(sub_6ac56103Address)
}

function sub_763125e7(?) payable {
    return sub_763125e7
}

function sub_98dae056(?) payable {
    return sub_98dae056[0 len sub_98dae056.length]
}

function sub_b8ace704(?) payable {
    return sub_b8ace704
}

function state() payable {
    return state
}

function sub_3d29a3d2(?) payable {
    if state != 2:
        if state != 3:
    if msg.sender == address(initiatorAddress):
        sub_b8ace704 = 1
    if msg.sender == address(responderAddress):
        sub_1dcc50a1 = 1
    if not sub_1dcc50a1:
        if state != 3:
        if address(sub_6ac56103Address) != msg.sender:
    else:
        if not sub_b8ace704:
            if state != 3:
            if address(sub_6ac56103Address) != msg.sender:
    selfdestruct(address(initiatorAddress))
}

function _fallback() payable {
  stop
}

function sub_1027b20c(?) payable {
    require state == 3
    state = 4
}

function setInitiator(address arg1) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_cfe1c368(?) payable {
    require not state
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    state = 1
}

function sub_d3a17ff7(?) payable {
    if msg.sender == address(initiatorAddress):
        if state != 4:
            require not state
            state = 4
}

function setHash(string arg1, string arg2) payable {
    require state == 4
    sub_98dae056[] = Array(len=arg1.length, data=arg1[all])
    sub_5199bdad[] = Array(len=arg2.length, data=arg2[all])
}

function dispute() payable {
    require state == 2
    require disputed != 1
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    state = 3
    disputed = 1
    emit 0x62e6201d 
    call address(initiatorAddress).scheduleCall(address rg1, bytes4 rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(this.address), Mask(32, 224, sha3('setToFinal()')), block.number + 5760
}

function rate(uint256 arg1) payable {
    if state == 1:
        if address(initiatorAddress) != msg.sender:
            if address(responderAddress) != msg.sender:
                if sub_5a95cf49 == 2:
                    state = 2
                    emit 0x3334f981 
            else:
                if not sub_57372bde:
                    sub_0cf6bc25 = arg1
                    sub_5a95cf49++
                    sub_57372bde = 1
                    emit 0x782a86b7 
                if sub_5a95cf49 == 2:
                    state = 2
                    emit 0x3334f981 
        else:
            if not sub_763125e7:
                sub_4052342f = arg1
                sub_5a95cf49++
                sub_763125e7 = 1
                emit 0x540fa278 
                if sub_5a95cf49 == 2:
                    state = 2
                    emit 0x3334f981 
            else:
                if address(responderAddress) != msg.sender:
                    if sub_5a95cf49 == 2:
                        state = 2
                        emit 0x3334f981 
                else:
                    if not sub_57372bde:
                        sub_0cf6bc25 = arg1
                        sub_5a95cf49++
                        sub_57372bde = 1
                        emit 0x782a86b7 
                    if sub_5a95cf49 == 2:
                        state = 2
                        emit 0x3334f981 
    else:
        if state == 3:
            if address(initiatorAddress) != msg.sender:
                if address(responderAddress) != msg.sender:
                    if sub_5a95cf49 == 2:
                        state = 2
                        emit 0x3334f981 
                else:
                    if not sub_57372bde:
                        sub_0cf6bc25 = arg1
                        sub_5a95cf49++
                        sub_57372bde = 1
                        emit 0x782a86b7 
                    if sub_5a95cf49 == 2:
                        state = 2
                        emit 0x3334f981 
            else:
                if not sub_763125e7:
                    sub_4052342f = arg1
                    sub_5a95cf49++
                    sub_763125e7 = 1
                    emit 0x540fa278 
                    if sub_5a95cf49 == 2:
                        state = 2
                        emit 0x3334f981 
                else:
                    if address(responderAddress) != msg.sender:
                        if sub_5a95cf49 == 2:
                            state = 2
                            emit 0x3334f981 
                    else:
                        if not sub_57372bde:
                            sub_0cf6bc25 = arg1
                            sub_5a95cf49++
                            sub_57372bde = 1
                            emit 0x782a86b7 
                        if sub_5a95cf49 == 2:
                            state = 2
                            emit 0x3334f981 
}



}
