contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x377775010273c19c9ff591693258bd3eeb393f07
    stor1 = 0x49d88a3edc64a4f69e9a42b9a4bf664deb0903a3
    require not msg.value
    return code.data[198 len 8874]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of address sub_ad7f1ab4;

function sub_ad7f1ab4(?) {
    return sub_ad7f1ab4[arg1]
}

function sub_c32af767(?) {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_23f3e3d9(?) {
    if msg.sender == stor0:
        stor0 = arg1
}

function sub_d19eaec4(?) {
    if msg.sender == stor1:
        stor1 = arg1
    else:
        if msg.sender == stor0:
            stor1 = arg1
}

function _fallback() payable {
    require msg.value >= 1
    create contract with 0 wei
                    code: code.data[1373 len 7458], msg.sender, msg.value, stor0, stor1
    require create.new_address
    sub_ad7f1ab4[address(msg.sender)] = address(create.new_address)
}



}
