contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    stor0 = msg.sender
    return code.data[229 len 2403]
}



// =====================  Runtime code  =====================


const getVaultBalance = eth.balance(this.address)


address owner;
mapping of uint256 stor1;
mapping of uint8 stor2;
mapping of uint256 userBalance;
mapping of uint8 stor5;
mapping of uint256 sub_c37187db;

function getUserBalance(address arg1) {
    return userBalance[address(arg1)]
}

function owner() {
    return owner
}

function sub_c37187db(?) {
    return sub_c37187db[address(arg1)]
}

function kill(uint256 arg1) {
    require msg.sender == owner
    require arg1 == 128
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function _fallback() payable {
    require msg.value >= 2 * 10^18
    stor1[address(msg.sender)] += msg.value
    require stor1[address(msg.sender)] >= msg.value
    stor2[address(msg.sender)] = 1
}

function sub_363eb97c(?) payable {
    require msg.value >= 2 * 10^18
    stor1[address(msg.sender)] += msg.value
    require stor1[address(msg.sender)] >= msg.value
    stor2[address(msg.sender)] = 1
}

function withdrawEther(uint256 arg1) {
    if not userBalance[address(msg.sender)]:
        return 0
    sub_c37187db[address(msg.sender)] = block.number
    if not stor5[address(msg.sender)]:
        return 0
    if arg1 >= eth.balance(this.address):
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_d31038c7(?) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == owner
    if not arg5:
        if arg4:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                   value arg2 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                   value arg2 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    else:
        if arg4:
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
