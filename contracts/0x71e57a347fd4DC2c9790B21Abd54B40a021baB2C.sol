contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() {
    create contract with 0 wei
                    code: code.data[579 len 6888]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[7479 len 20]
    stor2 = code.data[7511 len 20]
    stor3 = code.data[7543 len 20]
    return code.data[193 len 386]
}



// =====================  Runtime code  =====================


address sub_1f04a385Address;
address sub_3191476fAddress;
address sub_da39903fAddress;
address sub_469d5a4bAddress;

function sub_1f04a385(?) {
    return sub_1f04a385Address
}

function sub_3191476f(?) {
    return sub_3191476fAddress
}

function sub_469d5a4b(?) {
    return sub_469d5a4bAddress
}

function sub_da39903f(?) {
    return sub_da39903fAddress
}

function _fallback() payable {
    revert
}



}
