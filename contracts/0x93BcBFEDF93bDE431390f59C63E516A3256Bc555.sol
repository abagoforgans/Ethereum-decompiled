contract main {




// =====================  Runtime code  =====================


array of struct sub_bee4a5da;
mapping of uint256 sub_1b345ccb;
mapping of uint256 sub_7b0e5f56;
address stor3;
uint256 stor4;

function sub_1b345ccb(?) {
    return sub_1b345ccb[arg1][arg2]
}

function sub_7b0e5f56(?) {
    return sub_7b0e5f56[arg1]
}

function sub_bee4a5da(?) {
    require arg1 < sub_bee4a5da.length
    return sub_bee4a5da[arg1].field_0
}

function _fallback() payable {
  stop
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function sub_e2969ce8(?) {
    if stor3 != msg.sender:
        revert with 0, 32, 16, code.data[2371 len 32]
    stor4 = arg1
}

function addChild(address arg1, address arg2) {
    if stor3 != msg.sender:
        revert with 0, 32, 16, code.data[2371 len 32]
    create contract with 0 wei
                    code: code.data[1915 len 456], address(this.address), address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_bee4a5da.length++
    sub_bee4a5da[sub_bee4a5da.length].field_0 = address(create.new_address)
}

function sub_b62e22dd(?) {
    if stor3 != msg.sender:
        revert with 0, 32, 16, code.data[2371 len 32]
    require ext_code.size(this.address)
    call this.address.0x16279055 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'not allow contract'
    sub_1b345ccb[address(arg1)][arg3] += arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendAward(address arg1, uint256 arg2) {
    if stor3 != msg.sender:
        revert with 0, 32, 16, code.data[2371 len 32]
    require ext_code.size(this.address)
    call this.address.0x16279055 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'not allow contract'
    sub_7b0e5f56[address(arg1)] += arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_62339bf8(?) {
    if not sub_bee4a5da.length:
        mem[(32 * sub_bee4a5da.length) + 128] = 32
        mem[(32 * sub_bee4a5da.length) + 160] = sub_bee4a5da.length
        mem[(32 * sub_bee4a5da.length) + 192 len floor32(sub_bee4a5da.length)] = mem[128 len floor32(sub_bee4a5da.length)]
        return memory
          from (32 * sub_bee4a5da.length) + 128
           len (96 * sub_bee4a5da.length) + 64
    mem[128] = address(sub_bee4a5da.field_0)
    idx = 128
    s = 0
    while (32 * sub_bee4a5da.length) + 96 > idx:
        mem[idx + 32] = sub_bee4a5da[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_bee4a5da.length) + 192 len floor32(sub_bee4a5da.length)] = mem[128 len floor32(sub_bee4a5da.length)]
    return Array(len=sub_bee4a5da.length, data=mem[128 len floor32(sub_bee4a5da.length)], mem[(32 * sub_bee4a5da.length) + floor32(sub_bee4a5da.length) + 192 len (32 * sub_bee4a5da.length) - floor32(sub_bee4a5da.length)]), 
}



}
