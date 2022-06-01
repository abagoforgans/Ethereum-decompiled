contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
array of struct stor1;
array of struct stor2;

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == stor0)
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a5b46cae(?) {
    if arg1 != msg.sender:
        require msg.sender == arg2
    idx = 0
    while idx < stor2[address(arg1)].field_0:
        require idx < stor2[address(arg1)].field_0
        if address(stor2[address(arg1)][idx].field_0) == arg2:
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    stor2[address(arg1)].field_0++
    address(stor2[address(arg1)][stor2[address(arg1)].field_0].field_0) = arg2
}

function sub_bcdfb3dc(?) {
    if stor2[msg.sender].field_0:
        mem[128] = address(stor2[msg.sender].field_0)
        if (32 * stor2[msg.sender].field_0) + 32 > 64:
            mem[160] = address(stor2[msg.sender].field_256)
            idx = 160
            s = 1
            while (32 * stor2[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = address(stor2[msg.sender][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor2[msg.sender].field_0) + 128] = 32
    mem[(32 * stor2[msg.sender].field_0) + 160] = stor2[msg.sender].field_0
    mem[(32 * stor2[msg.sender].field_0) + 192 len floor32(stor2[msg.sender].field_0)] = mem[128 len floor32(stor2[msg.sender].field_0)]
    return memory
      from (32 * stor2[msg.sender].field_0) + 128
       len (96 * stor2[msg.sender].field_0) + 64
}

function sub_46968944(?) {
    if not stor1[msg.sender].field_0:
        mem[(32 * stor1[msg.sender].field_0) + 128] = 32
        mem[(32 * stor1[msg.sender].field_0) + 160] = stor1[msg.sender].field_0
        mem[(32 * stor1[msg.sender].field_0) + 192 len floor32(stor1[msg.sender].field_0)] = mem[128 len floor32(stor1[msg.sender].field_0)]
        return memory
          from (32 * stor1[msg.sender].field_0) + 128
           len (96 * stor1[msg.sender].field_0) + 64
    mem[128] = address(stor1[msg.sender].field_0)
    idx = 128
    s = 0
    while (32 * stor1[msg.sender].field_0) + 96 > idx:
        mem[idx + 32] = address(stor1[msg.sender][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1[msg.sender].field_0) + 192 len floor32(stor1[msg.sender].field_0)] = mem[128 len floor32(stor1[msg.sender].field_0)]
    return Array(len=stor1[msg.sender].field_0, data=mem[128 len floor32(stor1[msg.sender].field_0)], mem[(32 * stor1[msg.sender].field_0) + floor32(stor1[msg.sender].field_0) + 192 len (32 * stor1[msg.sender].field_0) - floor32(stor1[msg.sender].field_0)]), 
}

function sub_29ae5f4f(?) {
    if arg1 != msg.sender:
        require msg.sender == arg2
    mem[0] = arg1
    idx = 0
    while idx < stor2[address(arg1)].field_0:
        require idx < stor2[address(arg1)].field_0
        if address(stor2[address(arg1)][idx].field_0) != arg2:
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        require stor2[address(arg1)].field_0 - 1 < stor2[address(arg1)].field_0
        require idx < stor2[address(arg1)].field_0
        address(stor2[address(arg1)][idx].field_0) = address(stor2[address(arg1)][stor2[address(arg1)].field_0].field_0)
        require stor2[address(arg1)].field_0 - 1 < stor2[address(arg1)].field_0
        address(stor2[address(arg1)][stor2[address(arg1)].field_0].field_0) = 0
        stor2[address(arg1)].field_0--
        if stor2[address(arg1)].field_0 > stor2[address(arg1)].field_0 - 1:
            mem[0] = sha3(address(arg1), 2)
            idx = stor2[address(arg1)].field_0 + sha3(mem[0]) - 1
            while sha3(sha3(address(arg1), 2)) + stor2[address(arg1)].field_0 > idx:
                stor[idx] = 0
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
}

function createEvent(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 6695] = code.data[1911 len 6695]
    mem[ceil32(arg1.length) + 6919 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: code.data[1911 len 6695], Array(len=msg.sender, data=arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 6919] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 6951 len arg1.length % 32]
        create contract with 0 wei
                        code: code.data[1911 len 6695], Array(len=msg.sender, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 6919 len floor32(arg1.length) + -ceil32(arg1.length) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[msg.sender].field_0++
    address(stor1[msg.sender][stor1[msg.sender].field_0].field_0) = address(create.new_address)
    require stor1[msg.sender].field_0 - 1 < stor1[msg.sender].field_0
    return address(stor1[msg.sender][stor1[msg.sender].field_0].field_0)
}



}
