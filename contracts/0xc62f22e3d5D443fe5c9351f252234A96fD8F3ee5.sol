contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor5;

function _fallback() payable {
    stor1 = 0x3262de64ee5fa9b42ff95405e757db1d0b7c3ebd
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[103 len 1177]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address sub_fe6fd4e8Address;
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

function sub_fe6fd4e8(?) {
    return sub_fe6fd4e8Address
}

function _fallback() payable {
    revert
}

function setTradeContract(address arg1) {
    if owner == msg.sender:
        sub_fe6fd4e8Address = arg1
}

function getTokenPrice(uint256 arg1) {
    return token[arg1], sub_2f385ceb[stor4[arg1]].field_0, sub_2f385ceb[stor4[arg1]].field_256
}

function sub_88f7bb3e(?) {
    if sub_fe6fd4e8Address == msg.sender:
        idx = 0
        s = 0
        while idx <= sub_5773a309:
            mem[0] = idx
            mem[32] = 4
            if token[idx] != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            token[stor5] = arg1
            sub_5773a309++
        require ext_code.size(stor1)
        call stor1.0x6971cc7f with:
             gas gas_remaining - 710 wei
            args arg3
        require ext_call.success
        if ext_call.return_data[12 len 20]:
            sub_2f385ceb[address(arg1)].field_256 = arg2
        else:
            sub_2f385ceb[address(arg1)].field_0 = arg2
}



}
