contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[65 len 1317]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_2f385ceb;
mapping of address token;
uint256 sub_5773a309;

function sub_2f385ceb(?) {
    return sub_2f385ceb[arg1].field_0, sub_2f385ceb[arg1].field_256
}

function sub_5773a309(?) {
    return sub_5773a309
}

function owner() {
    return owner
}

function tokenAddresses(uint256 arg1) {
    return token[arg1]
}

function _fallback() payable {
    revert
}

function getTokenPrice(uint256 arg1) {
    return token[arg1], sub_2f385ceb[stor2[arg1]].field_0, sub_2f385ceb[stor2[arg1]].field_256
}

function o() {
    require ext_code.size(0x9477519b5fbc42c208dfda8cd5734414068be62b)
    call 0x9477519b5fbc42c208dfda8cd5734414068be62b.contractAddress(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 30
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_fe6fd4e8(?) {
    require ext_code.size(0x9477519b5fbc42c208dfda8cd5734414068be62b)
    call 0x9477519b5fbc42c208dfda8cd5734414068be62b.contractAddress(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_88f7bb3e(?) {
    require ext_code.size(0x9477519b5fbc42c208dfda8cd5734414068be62b)
    call 0x9477519b5fbc42c208dfda8cd5734414068be62b.contractAddress(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        s = 0
        while idx <= sub_5773a309:
            mem[0] = idx
            mem[32] = 2
            if token[idx] != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            token[stor3] = arg1
            sub_5773a309++
        require ext_code.size(0x9477519b5fbc42c208dfda8cd5734414068be62b)
        call 0x9477519b5fbc42c208dfda8cd5734414068be62b.contractAddress(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args 30
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6971cc7f with:
             gas gas_remaining - 710 wei
            args arg3
        require ext_call.success
        if ext_call.return_data[12 len 20]:
            sub_2f385ceb[address(arg1)].field_256 = arg2
        else:
            sub_2f385ceb[address(arg1)].field_0 = arg2
}



}
