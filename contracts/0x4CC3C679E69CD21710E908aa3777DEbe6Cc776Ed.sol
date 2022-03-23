contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 4078]
}



// =====================  Runtime code  =====================


address registrarAddress;
uint256 fee_registration;
uint256 fee_msg;
uint256 cnt_registrations;
mapping of struct regadr;
array of struct msgs;
mapping of uint8 preregister;

function registrar() payable {
    return registrarAddress
}

function preregister(address arg1) payable {
    return preregister[arg1]
}

function msgs(address arg1, uint256 arg2) payable {
    require arg2 < msgs[arg1].field_0
    return msgs[arg1][arg2].field_0
}

function fee_registration() payable {
    return fee_registration
}

function regadr(address arg1) payable {
    mem[224] = regadr[arg1][1].field_0
    idx = 224
    s = 0
    while regadr[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = regadr[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[regadr[arg1][1].length + (floor32(regadr[arg1][1].length - 1) + -regadr[arg1][1].length + 32 % 32) + 224] = regadr[arg1][2].length
    mem[regadr[arg1][1].length + (floor32(regadr[arg1][1].length - 1) + -regadr[arg1][1].length + 32 % 32) + 256] = regadr[arg1][2].field_0
    idx = regadr[arg1][1].length + (floor32(regadr[arg1][1].length - 1) + -regadr[arg1][1].length + 32 % 32) + 256
    s = 0
    while regadr[arg1][1].length + (floor32(regadr[arg1][1].length - 1) + -regadr[arg1][1].length + 32 % 32) + regadr[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = regadr[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return regadr[arg1].field_0, 
           Array(len=regadr[arg1][1].length, data=mem[224 len regadr[arg1][1].length + (floor32(regadr[arg1][1].length - 1) + -regadr[arg1][1].length + 32 % 32) + regadr[arg1][2].length + (floor32(regadr[arg1][2].length - 1) + -regadr[arg1][2].length + 32 % 32) + 32]),
           regadr[arg1][1].length + (floor32(regadr[arg1][1].length - 1) + -regadr[arg1][1].length + 32 % 32) + 128
}

function fee_msg() payable {
    return fee_msg
}

function cnt_registrations() payable {
    return cnt_registrations
}

function setMsgPrice(uint256 arg1) payable {
    require msg.sender == registrarAddress
    fee_msg = arg1
}

function setRegistrationPrice(uint256 arg1) payable {
    require msg.sender == registrarAddress
    fee_registration = arg1
}

function _fallback() payable {
    if msg.value > 0:
        call registrarAddress with:
           value msg.value wei
             gas 0 wei
}

function preRegister(address arg1) payable {
    require msg.sender == registrarAddress
    call arg1 with:
       value msg.value wei
         gas 0 wei
    preregister[address(arg1)] = 1
}

function ackMsg(uint256 arg1, string arg2) payable {
    require arg1 < msgs[address(msg.sender)].field_0
    call msgs[address(msg.sender)][arg1].field_0.ack(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all])
    require ext_call.success
}

function getMsgs() payable {
    if msgs[address(msg.sender)].field_0:
        mem[160] = msgs[address(msg.sender)].field_0
        idx = 160
        s = 0
        while (32 * msgs[address(msg.sender)].field_0) + 128 > idx:
            mem[idx + 32] = msgs[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=msgs[address(msg.sender)].field_0, data=mem[160 len 32 * msgs[address(msg.sender)].field_0])
}

function updateRegistration(string arg1, string arg2) payable {
    if msg.value < fee_registration:
        require preregister[address(msg.sender)]
    regadr[address(msg.sender)].field_0 = regadr[address(msg.sender)].field_160
    regadr[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    regadr[address(msg.sender)][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    if fee_registration > 0:
        call registrarAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
    preregister[address(msg.sender)] = 0
    cnt_registrations++
}

function unregister() payable {
    regadr[address(msg.sender)].field_0 = 0
    regadr[address(msg.sender)].field_256 = 0
    if 31 < regadr[address(msg.sender)][1].length:
        idx = 0
        while regadr[address(msg.sender)][1].length + 31 / 32 > idx:
            regadr[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    regadr[address(msg.sender)].field_512 = 0
    if 31 < regadr[address(msg.sender)][2].length:
        idx = 0
        while regadr[address(msg.sender)][2].length + 31 / 32 > idx:
            regadr[address(msg.sender)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
}

function register(string arg1) payable {
    if msg.value < fee_registration:
        require preregister[address(msg.sender)]
    regadr[address(msg.sender)].field_0 = regadr[address(msg.sender)].field_160
    regadr[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    regadr[address(msg.sender)].field_512 = 0
    regadr[address(msg.sender)].field_513 = 0
    regadr[address(msg.sender)].field_520 = msg.sender / 256
    idx = 0
    while regadr[address(msg.sender)][2].length + 31 / 32 > idx:
        regadr[address(msg.sender)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    if fee_registration > 0:
        call registrarAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
    preregister[address(msg.sender)] = 0
    cnt_registrations++
}

function sendMsg(address arg1, string arg2) payable {
    require msg.value >= fee_msg
    msgs[address(arg1)].field_0++
    if not msgs[address(arg1)].field_0 <= msgs[address(arg1)].field_0 + 1:
        idx = msgs[address(arg1)].field_0 + 1
        while msgs[address(arg1)].field_0 > idx:
            msgs[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg2.length) + 1501 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[2865 len 1213], address(this.address), msg.sender, address(arg1), 128, arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 1501] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 1533 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[2865 len 1213], address(this.address), msg.sender, address(arg1), 128, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 1501 len -(arg2.length % 32) + 32]
    msgs[address(arg1)][msgs[address(arg1)].field_0].field_0 = create.new_address or Mask(96, 160, msgs[address(arg1)][msgs[address(arg1)].field_0].field_0)
    if fee_msg > 0:
        call registrarAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
