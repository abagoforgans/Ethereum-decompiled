contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor5 = 0
    return code.data[88 len 1689]
}



// =====================  Runtime code  =====================


address initiatorAddress;
address responderAddress;
uint256 stor1;
address sub_6ac56103Address;
uint256 sub_0cf6bc25;
uint256 sub_4052342f;
uint8 disputed;
uint8 sub_763125e7; offset 8
uint8 sub_57372bde; offset 16
uint8 state; offset 24

function disputed() payable {
    return disputed
}

function sub_0cf6bc25(?) payable {
    return sub_0cf6bc25
}

function responder() payable {
    return address(responderAddress)
}

function sub_4052342f(?) payable {
    return sub_4052342f
}

function sub_57372bde(?) payable {
    return sub_57372bde
}

function initiator() payable {
    return initiatorAddress
}

function sub_6ac56103(?) payable {
    return sub_6ac56103Address
}

function sub_763125e7(?) payable {
    return sub_763125e7
}

function state() payable {
    return state
}

function sub_d3a17ff7(?) payable {
    require not state
    if initiatorAddress != msg.sender:
    selfdestruct(initiatorAddress)
}

function _fallback() payable {
  stop
}

function sub_b7923fb3(?) payable {
    emit StateChanged(arg1);
}

function sub_cfe1c368(?) payable {
    require not state
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    state = 1
    emit StateChanged(state);
}

function rate(uint256 arg1) payable {
    require state == 1
    require state == 3
    if initiatorAddress != msg.sender:
        if address(responderAddress) != msg.sender:
            if sub_763125e7 == 1:
                if sub_57372bde == 1:
                    state = 2
                    emit StateChanged(state);
        else:
            if not sub_57372bde:
                sub_0cf6bc25 = arg1
                sub_57372bde = 1
            if sub_763125e7 == 1:
                if sub_57372bde == 1:
                    state = 2
                    emit StateChanged(state);
    else:
        if not sub_763125e7:
            sub_4052342f = arg1
            sub_763125e7 = 1
            if sub_763125e7 == 1:
                if sub_57372bde == 1:
                    state = 2
                    emit StateChanged(state);
        else:
            if address(responderAddress) != msg.sender:
                if sub_763125e7 == 1:
                    if sub_57372bde == 1:
                        state = 2
                        emit StateChanged(state);
            else:
                if not sub_57372bde:
                    sub_0cf6bc25 = arg1
                    sub_57372bde = 1
                if sub_763125e7 == 1:
                    if sub_57372bde == 1:
                        state = 2
                        emit StateChanged(state);
}



}
