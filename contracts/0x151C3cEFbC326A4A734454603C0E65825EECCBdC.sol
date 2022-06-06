contract main {




// =====================  Runtime code  =====================


uint256 endTime;
uint8 stor1; offset 160
address owner;
mapping of uint256 sub_e7c37ebe;
array of struct sub_e1599483;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;

function active() {
    return bool(stor1)
}

function endTime() {
    return endTime
}

function sub_8298278a(?) {
    return sub_e1599483.length
}

function owner() {
    return owner
}

function sub_e1599483(?) {
    require arg1 < sub_e1599483.length
    return sub_e1599483[arg1].field_0, sub_e1599483[arg1].field_256, sub_e1599483[arg1].field_512
}

function sub_e7c37ebe(?) {
    return sub_e7c37ebe[arg1]
}

function _fallback() payable {
    revert
}

function pay(uint256 arg1) payable {
    require bool(stor1) == 1
    require arg1 < sub_e1599483.length
    sub_e1599483[arg1].field_0 += msg.value
    emit Pay(msg.sender, arg1);
}

function add(address arg1, bytes32 arg2) {
    require bool(stor1) == 1
    require msg.sender == owner
    sub_e7c37ebe[arg2] = sub_e1599483.length
    sub_e1599483.length++
    sub_e1599483[sub_e1599483.length].field_0 = 0
    storC257[stor3.length] = arg1
    storC257[stor3.length] = arg2
    return sub_e1599483.length
}

function end() {
    require bool(stor1) == 1
    require block.timestamp > endTime
    if eth.balance(this.address):
        require eth.balance(this.address)
        require 20 * eth.balance(this.address) / eth.balance(this.address) == 20
    call owner with:
       value 20 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = 0
    t = 0
    while idx < sub_e1599483.length:
        require idx < sub_e1599483.length
        mem[0] = 3
        if sub_e1599483[idx].field_0:
            require sub_e1599483[idx].field_0
            require 70 * sub_e1599483[idx].field_0 / sub_e1599483[idx].field_0 == 70
        call sub_e1599483[idx].field_256 with:
           value 70 * sub_e1599483[idx].field_0 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_e1599483[idx].field_0 <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = sub_e1599483[idx].field_256
        t = sub_e1599483[idx].field_0
        continue 
    call address(s) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 0
    emit 0x477383f3 
}



}
