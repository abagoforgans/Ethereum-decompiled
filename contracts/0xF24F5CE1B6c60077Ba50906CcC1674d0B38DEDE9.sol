contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = 2
    stor2 = 50
    stor3 = 0
    return code.data[74 len 2334]
}



// =====================  Runtime code  =====================


address stor0;
uint256 fee;
uint256 fee2;
uint256 stor3;
array of struct _mail;
array of struct stor5;

function get_mail(uint256 arg1) {
    require arg1 < _mail.length
    return _mail[arg1].field_512
}

function fee2() {
    return fee2
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function update_fee(uint256 arg1, uint256 arg2) {
    require stor0 == msg.sender
    fee = arg1
    fee2 = arg2
}

function draw() {
    if stor3 > 0:
        call stor0 with:
           value stor3 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor3 = 0
}

function mails_to_deliver() {
    if not stor5.length:
        mem[(32 * stor5.length) + 160] = 32
        mem[(32 * stor5.length) + 192] = stor5.length
        mem[(32 * stor5.length) + 224 len floor32(stor5.length)] = mem[160 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 160
           len (96 * stor5.length) + 64
    mem[160] = uint256(stor5.field_0)
    idx = 160
    s = 0
    while (32 * stor5.length) + 128 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 224 len floor32(stor5.length)] = mem[160 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[160 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 224 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function post(address arg1, uint256 arg2) payable {
    require msg.value > 0
    require arg2 >= 1
    require arg2 <= 1000
    stor3 += msg.value * fee / 100
    _mail.length++
    if not _mail.length <= _mail.length + 1:
        idx = 4 * _mail.length + 1
        while 4 * _mail.length > idx:
            _mail[idx].field_0 = 0
            _mail[idx].field_256 = 0
            _mail[idx].field_512 = 0
            _mail[idx].field_768 = 0
            idx = idx + 4
            continue 
    _mail[_mail.length].field_0 = arg1
    _mail[_mail.length].field_256 = msg.value - (msg.value * fee / 100) - ((msg.value * arg2) - (msg.value * fee / 100 * arg2) / 1000)
    _mail[_mail.length].field_512 = (msg.value * arg2) - (msg.value * fee / 100 * arg2) / 1000
    _mail[_mail.length].field_768 = 0
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[stor5.length].field_0 = 1
}

function deliver(uint256 arg1, uint256 arg2) {
    require arg1 < stor5.length
    require stor5[arg1].field_0
    create contract with 0 wei
                    code: code.data[2094 len 197]
    require create.new_address
    require arg1 < _mail.length
    require ext_code.size(address(create.new_address))
    call address(create.new_address).boom(address rg1) with:
       value _mail[arg1].field_256 wei
         gas gas_remaining - 9710 wei
        args _mail[arg1].field_0
    require ext_call.success
    require arg1 < _mail.length
    require arg1 < _mail.length
    if 2 * _mail[arg1].field_512 <= gas_remaining:
        call msg.sender with:
           value _mail[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Report(string rg1, uint256 rg2):
                    0x668a2f6700000000000000000000000000000000000000000000000000000000,
                    arg1,
                    18,
                    'Message Delivered:',
    else:
        if arg2 != 1:
            call msg.sender with:
               value _mail[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Report(string rg1, uint256 rg2):
                        0x668a2f6700000000000000000000000000000000000000000000000000000000,
                        arg1,
                        18,
                        'Message Delivered:',
        else:
            require ext_code.size(this.address)
            call this.address.0xd648d7fd with:
               value _mail[arg1].field_512 wei
                 gas gas_remaining - 9710 wei
                args msg.sender, fee2
            require ext_call.success
            emit Report(string rg1, uint256 rg2):
                        0xd648d7fd00000000000000000000000000000000000000000000000000000000,
                        arg1,
                        18,
                        'Message Delivered:',
    require arg1 < stor5.length
    stor5[arg1].field_0 = 0
    require arg1 < _mail.length
    _mail[arg1].field_0 = 0
    _mail[arg1].field_256 = 0
    _mail[arg1].field_512 = 0
    _mail[arg1].field_768 = 0
}



}
