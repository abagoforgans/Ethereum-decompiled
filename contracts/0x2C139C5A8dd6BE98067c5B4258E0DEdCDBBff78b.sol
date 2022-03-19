contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = code.data[3066 len 32]
    stor0 = code.data[3098 len 32]
    stor1 = code.data[3162 len 32]
    stor2 = code.data[3130 len 32]
    stor4 = code.data[3194 len 32]
    return code.data[304 len 2762]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert 
}

function buildDSMap() payable {
    call stor0.buildDSMap() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function buildDSNullMap() payable {
    call stor0.0xb8d94b95 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function buildDSBalanceDB() payable {
    call stor0.0x7d4cf602 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function buildDSApprovalDB() payable {
    call stor0.0xacf4280c with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function buildDSTokenFrontend() payable {
    call stor1.0x3358d2d3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function buildDSTokenRegistry() payable {
    call stor1.0xa7c5052e with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function buildDSBasicAuthority() payable {
    call stor3.0x73e1743a with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function sub_6db0db1a(?) payable {
    call stor1.0x6db0db1a with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function buildDSEasyMultisig(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    call stor2.0x2bed55b0 with:
         gas gas_remaining - 25050 wei
        args arg1, arg2, arg3
    require ext_call.success
    call address(ext_call.return_data[0]).updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}

function sub_b6a44bbd(?) payable {
    call arg1.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args stor4, 0
    require ext_call.success
    call stor4.0xb6a44bbd with:
         gas gas_remaining - 25050 wei
        args arg1
    call arg1.updateAuthority(address rg1, uint8 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, 0
    return address(ext_call.return_data[0])
}



}
