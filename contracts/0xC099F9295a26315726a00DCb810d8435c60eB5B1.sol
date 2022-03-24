contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor0 = 0xf4c64518ea10f995918a454158c6b61407ea345c
    stor2 = 0
    stor3 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[159 len 2795]
}



// =====================  Runtime code  =====================


address sub_dd287692Address;
uint256 stor0;
address owner;
uint256 sub_458e8a0a;
uint8 sub_4534e5f6;

function sub_4534e5f6(?) payable {
    return bool(sub_4534e5f6)
}

function sub_458e8a0a(?) payable {
    return sub_458e8a0a
}

function owner() payable {
    return owner
}

function sub_dd287692(?) payable {
    return address(sub_dd287692Address)
}

function withdrawAllEther(address arg1) payable {
    if msg.sender == owner:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_e90673f7(?) payable {
    if msg.sender == owner:
        sub_458e8a0a = arg4
        call arg1.splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args arg2, arg3
        require ext_call.success
}

function vote(address arg1, uint256 arg2, bool arg3) payable {
    if msg.sender == owner:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        call arg1.vote(uint256 rg1, bool rg2) with:
             gas gas_remaining - 25050 wei
            args arg2, arg3
        require ext_call.success
}

function sub_dcb9c6f8(?) payable {
    if msg.sender == owner:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        call address(sub_dd287692Address).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args address(arg2), arg3
        require ext_call.success
}

function sub_d77180db(?) payable {
    if msg.sender == owner:
        call arg1.newProposal(address rg1, uint256 rg2, string rg3, bytes rg4, uint256 rg5, bool rg6) with:
             gas gas_remaining - 25050 wei
            args address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), arg4.length + 224, arg6, arg7
        require ext_call.success
}

function _fallback() payable {
    if sub_458e8a0a <= 40:
        sub_458e8a0a++
        call address(sub_dd287692Address).splitDAO(uint256 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args 1, 0x79f09717c5b352078234832e5737651ddb333548
        require ext_call.success
    else:
        sub_458e8a0a = 0
        call address(sub_dd287692Address).balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        call address(sub_dd287692Address).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args 0xb6f2a1314470b0bb4a615b5a63f85efce522a399, ext_call.return_data[0]
}



}
