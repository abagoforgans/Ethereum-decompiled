contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 681]




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0xb67d77c5 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(msg.sender)], arg2
    require delegate.return_code
    balanceOf[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x96cbca473af93cdcd180109efdde78767b68f4a7)
    delegate 0x96cbca473af93cdcd180109efdde78767b68f4a7.0x771602f7 with:
         gas gas_remaining - 710 wei
        args balanceOf[arg1], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
