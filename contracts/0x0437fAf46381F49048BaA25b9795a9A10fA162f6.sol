contract main {


// =======================  Init code  ======================


uint256 stor2;
array of uint256 stor3;
address stor4;

function _fallback() payable {
    stor2 = 1000
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = '.ceth' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4 = msg.sender
    return code.data[362 len 5501]
}



// =====================  Runtime code  =====================


array of address stor1;
uint256 stor2;
address stor4;
mapping of address stor99;

function getAmountRegistered() {
    return stor1.length
}

function deleteContract() {
    if stor4 != msg.sender:
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function getNameOwner(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function read(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 128] = stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function transferOwnership(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _24 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    if msg.sender == address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        mem[ceil32(arg1.length) + 160] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        mem[ceil32(arg1.length) + 192] = arg2
        mem[ceil32(arg1.length) + 128] = 96
        mem[ceil32(arg1.length) + 224] = arg1.length
        if arg1.length:
            mem[ceil32(arg1.length) + 256] = mem[128]
            mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        emit OwnershipTransfer(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 256 len arg1.length]), mem[ceil32(arg1.length) + 160], address(arg2));
        address(stor[_24]) = arg2
    else:
        mem[ceil32(arg1.length) + 128] = 64
        mem[ceil32(arg1.length) + 192] = 25
        mem[ceil32(arg1.length) + 224] = 'insufficient permissions.'
        mem[ceil32(arg1.length) + 160] = 128
        mem[ceil32(arg1.length) + 256] = arg1.length
        if not arg1.length:
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len floor32(arg1.length) + 32],
        else:
            mem[ceil32(arg1.length) + 288] = mem[128]
            mem[ceil32(arg1.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[128],
                           mem[ceil32(arg1.length) + 320 len floor32(arg1.length)],
}

function changeAddress(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _24 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    if msg.sender == address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        mem[ceil32(arg1.length) + 160] = stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
        mem[ceil32(arg1.length) + 192] = arg2
        mem[ceil32(arg1.length) + 128] = 96
        mem[ceil32(arg1.length) + 224] = arg1.length
        if arg1.length:
            mem[ceil32(arg1.length) + 256] = mem[128]
            mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        emit AddressChanged(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 256 len arg1.length]), mem[ceil32(arg1.length) + 160], address(arg2));
        stor1[_24] = arg2
    else:
        mem[ceil32(arg1.length) + 128] = 64
        mem[ceil32(arg1.length) + 192] = 25
        mem[ceil32(arg1.length) + 224] = 'insufficient permissions.'
        mem[ceil32(arg1.length) + 160] = 128
        mem[ceil32(arg1.length) + 256] = arg1.length
        if not arg1.length:
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len floor32(arg1.length) + 32],
        else:
            mem[ceil32(arg1.length) + 288] = mem[128]
            mem[ceil32(arg1.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           25,
                           'insufficient permissions.',
                           arg1.length,
                           mem[128],
                           mem[ceil32(arg1.length) + 320 len floor32(arg1.length)],
}

function send(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    _30 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    if stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]:
        call stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 192] = stor1[_30]
        mem[ceil32(arg1.length) + 160] = 96
        mem[ceil32(arg1.length) + 224] = arg1.length
        if arg1.length:
            mem[ceil32(arg1.length) + 256] = mem[128]
            mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        emit Transfer(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 256 len arg1.length]), stor1[_30]);
    else:
        mem[ceil32(arg1.length) + 128] = 64
        mem[ceil32(arg1.length) + 192] = 29
        mem[ceil32(arg1.length) + 224] = 'name is not valid/registered.'
        mem[ceil32(arg1.length) + 160] = 128
        mem[ceil32(arg1.length) + 256] = arg1.length
        if not arg1.length:
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           29,
                           'name is not valid/registered.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           29,
                           'name is not valid/registered.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len floor32(arg1.length) + 32],
        else:
            mem[ceil32(arg1.length) + 288] = mem[128]
            mem[ceil32(arg1.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           29,
                           'name is not valid/registered.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 288 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           128,
                           29,
                           'name is not valid/registered.',
                           arg1.length,
                           mem[128],
                           mem[ceil32(arg1.length) + 320 len floor32(arg1.length)],
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function register(string arg1, address arg2) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 224] = 0
    _113 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 288] = arg1.length
    mem[ceil32(arg1.length) + 320] = 128
    if address(stor[_113]):
        mem[ceil32(arg1.length) + 352] = 64
        mem[ceil32(arg1.length) + 416] = 84
        mem[ceil32(arg1.length) + 448] = 'either the name is taken, too lo'
        mem[ceil32(arg1.length) + 480] = 'ng, has invalid characters, or t'
        mem[ceil32(arg1.length) + 512] = 'he registry is full.'
        mem[ceil32(arg1.length) + 384] = 192
        mem[ceil32(arg1.length) + 544] = arg1.length
        if not arg1.length:
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           192,
                           84,
                           'either the name is taken, too lo',
                           'ng, has invalid characters, or t',
                           'he registry is full.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 576 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           192,
                           84,
                           'either the name is taken, too lo',
                           'ng, has invalid characters, or t',
                           'he registry is full.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 576 len floor32(arg1.length) + 32],
        else:
            mem[ceil32(arg1.length) + 576] = mem[128]
            mem[ceil32(arg1.length) + 608 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
            if not arg1.length % 32:
                emit Error(string rg1, string rg2):
                           64,
                           192,
                           84,
                           'either the name is taken, too lo',
                           'ng, has invalid characters, or t',
                           'he registry is full.',
                           arg1.length,
                           mem[ceil32(arg1.length) + 576 len arg1.length],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                emit Error(string rg1, string rg2):
                           64,
                           192,
                           84,
                           'either the name is taken, too lo',
                           'ng, has invalid characters, or t',
                           'he registry is full.',
                           arg1.length,
                           mem[128],
                           mem[ceil32(arg1.length) + 608 len floor32(arg1.length)],
    else:
        if arg1.length <= 5:
            mem[ceil32(arg1.length) + 352] = 64
            mem[ceil32(arg1.length) + 416] = 84
            mem[ceil32(arg1.length) + 448] = 'either the name is taken, too lo'
            mem[ceil32(arg1.length) + 480] = 'ng, has invalid characters, or t'
            mem[ceil32(arg1.length) + 512] = 'he registry is full.'
            mem[ceil32(arg1.length) + 384] = 192
            mem[ceil32(arg1.length) + 544] = arg1.length
            if not arg1.length:
                if not arg1.length % 32:
                    emit Error(string rg1, string rg2):
                               64,
                               192,
                               84,
                               'either the name is taken, too lo',
                               'ng, has invalid characters, or t',
                               'he registry is full.',
                               arg1.length,
                               mem[ceil32(arg1.length) + 576 len arg1.length],
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                    emit Error(string rg1, string rg2):
                               64,
                               192,
                               84,
                               'either the name is taken, too lo',
                               'ng, has invalid characters, or t',
                               'he registry is full.',
                               arg1.length,
                               mem[ceil32(arg1.length) + 576 len floor32(arg1.length) + 32],
            else:
                mem[ceil32(arg1.length) + 576] = mem[128]
                mem[ceil32(arg1.length) + 608 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                if not arg1.length % 32:
                    emit Error(string rg1, string rg2):
                               64,
                               192,
                               84,
                               'either the name is taken, too lo',
                               'ng, has invalid characters, or t',
                               'he registry is full.',
                               arg1.length,
                               mem[ceil32(arg1.length) + 576 len arg1.length],
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                    emit Error(string rg1, string rg2):
                               64,
                               192,
                               84,
                               'either the name is taken, too lo',
                               'ng, has invalid characters, or t',
                               'he registry is full.',
                               arg1.length,
                               mem[128],
                               mem[ceil32(arg1.length) + 608 len floor32(arg1.length)],
        else:
            if arg1.length > 20:
                mem[ceil32(arg1.length) + 352] = 64
                mem[ceil32(arg1.length) + 416] = 84
                mem[ceil32(arg1.length) + 448] = 'either the name is taken, too lo'
                mem[ceil32(arg1.length) + 480] = 'ng, has invalid characters, or t'
                mem[ceil32(arg1.length) + 512] = 'he registry is full.'
                mem[ceil32(arg1.length) + 384] = 192
                mem[ceil32(arg1.length) + 544] = arg1.length
                if not arg1.length:
                    if not arg1.length % 32:
                        emit Error(string rg1, string rg2):
                                   64,
                                   192,
                                   84,
                                   'either the name is taken, too lo',
                                   'ng, has invalid characters, or t',
                                   'he registry is full.',
                                   arg1.length,
                                   mem[ceil32(arg1.length) + 576 len arg1.length],
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                        emit Error(string rg1, string rg2):
                                   64,
                                   192,
                                   84,
                                   'either the name is taken, too lo',
                                   'ng, has invalid characters, or t',
                                   'he registry is full.',
                                   arg1.length,
                                   mem[ceil32(arg1.length) + 576 len floor32(arg1.length) + 32],
                else:
                    mem[ceil32(arg1.length) + 576] = mem[128]
                    mem[ceil32(arg1.length) + 608 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                    if not arg1.length % 32:
                        emit Error(string rg1, string rg2):
                                   64,
                                   192,
                                   84,
                                   'either the name is taken, too lo',
                                   'ng, has invalid characters, or t',
                                   'he registry is full.',
                                   arg1.length,
                                   mem[ceil32(arg1.length) + 576 len arg1.length],
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                        emit Error(string rg1, string rg2):
                                   64,
                                   192,
                                   84,
                                   'either the name is taken, too lo',
                                   'ng, has invalid characters, or t',
                                   'he registry is full.',
                                   arg1.length,
                                   mem[128],
                                   mem[ceil32(arg1.length) + 608 len floor32(arg1.length)],
            else:
                if stor1.length >= stor2:
                    mem[ceil32(arg1.length) + 352] = 64
                    mem[ceil32(arg1.length) + 416] = 84
                    mem[ceil32(arg1.length) + 448] = 'either the name is taken, too lo'
                    mem[ceil32(arg1.length) + 480] = 'ng, has invalid characters, or t'
                    mem[ceil32(arg1.length) + 512] = 'he registry is full.'
                    mem[ceil32(arg1.length) + 384] = 192
                    mem[ceil32(arg1.length) + 544] = arg1.length
                    if not arg1.length:
                        if not arg1.length % 32:
                            emit Error(string rg1, string rg2):
                                       64,
                                       192,
                                       84,
                                       'either the name is taken, too lo',
                                       'ng, has invalid characters, or t',
                                       'he registry is full.',
                                       arg1.length,
                                       mem[ceil32(arg1.length) + 576 len arg1.length],
                        else:
                            mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                            emit Error(string rg1, string rg2):
                                       64,
                                       192,
                                       84,
                                       'either the name is taken, too lo',
                                       'ng, has invalid characters, or t',
                                       'he registry is full.',
                                       arg1.length,
                                       mem[ceil32(arg1.length) + 576 len floor32(arg1.length) + 32],
                    else:
                        mem[ceil32(arg1.length) + 576] = mem[128]
                        mem[ceil32(arg1.length) + 608 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                        if not arg1.length % 32:
                            emit Error(string rg1, string rg2):
                                       64,
                                       192,
                                       84,
                                       'either the name is taken, too lo',
                                       'ng, has invalid characters, or t',
                                       'he registry is full.',
                                       arg1.length,
                                       mem[ceil32(arg1.length) + 576 len arg1.length],
                        else:
                            mem[floor32(arg1.length) + ceil32(arg1.length) + 576] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 608 len arg1.length % 32]
                            emit Error(string rg1, string rg2):
                                       64,
                                       192,
                                       84,
                                       'either the name is taken, too lo',
                                       'ng, has invalid characters, or t',
                                       'he registry is full.',
                                       arg1.length,
                                       mem[128],
                                       mem[ceil32(arg1.length) + 608 len floor32(arg1.length)],
                else:
                    mem[ceil32(arg1.length) + 352] = 5
                    mem[ceil32(arg1.length) + 384] = '.ceth'
                    mem[ceil32(arg1.length) + 416] = 0
                    mem[ceil32(arg1.length) + 448] = 0
                    mem[ceil32(arg1.length) + 480] = 5
                    mem[ceil32(arg1.length) + 512] = ceil32(arg1.length) + 384
                    if arg1.length < 5:
                        mem[ceil32(arg1.length) + 544] = 64
                        mem[ceil32(arg1.length) + 608] = 84
                        mem[ceil32(arg1.length) + 640] = 'either the name is taken, too lo'
                        mem[ceil32(arg1.length) + 672] = 'ng, has invalid characters, or t'
                        mem[ceil32(arg1.length) + 704] = 'he registry is full.'
                        mem[ceil32(arg1.length) + 576] = 192
                        mem[ceil32(arg1.length) + 736] = arg1.length
                        if not arg1.length:
                            if not arg1.length % 32:
                                emit Error(string rg1, string rg2):
                                           64,
                                           192,
                                           84,
                                           'either the name is taken, too lo',
                                           'ng, has invalid characters, or t',
                                           'he registry is full.',
                                           arg1.length,
                                           mem[ceil32(arg1.length) + 768 len arg1.length],
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + 768] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 800 len arg1.length % 32]
                                emit Error(string rg1, string rg2):
                                           64,
                                           192,
                                           84,
                                           'either the name is taken, too lo',
                                           'ng, has invalid characters, or t',
                                           'he registry is full.',
                                           arg1.length,
                                           mem[ceil32(arg1.length) + 768 len floor32(arg1.length) + 32],
                        else:
                            mem[ceil32(arg1.length) + 768] = mem[128]
                            mem[ceil32(arg1.length) + 800 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            if not arg1.length % 32:
                                emit Error(string rg1, string rg2):
                                           64,
                                           192,
                                           84,
                                           'either the name is taken, too lo',
                                           'ng, has invalid characters, or t',
                                           'he registry is full.',
                                           arg1.length,
                                           mem[ceil32(arg1.length) + 768 len arg1.length],
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + 768] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 800 len arg1.length % 32]
                                emit Error(string rg1, string rg2):
                                           64,
                                           192,
                                           84,
                                           'either the name is taken, too lo',
                                           'ng, has invalid characters, or t',
                                           'he registry is full.',
                                           arg1.length,
                                           mem[128],
                                           mem[ceil32(arg1.length) + 800 len floor32(arg1.length)],
                    else:
                        if arg1.length + 123 == ceil32(arg1.length) + 384:
                            uint256(stor[sha3(_113 + 2)][]) = Array(len=arg1.length, data=arg1[all])
                            address(stor[_113]) = msg.sender
                            stor1[_113] = arg2
                            mem[ceil32(arg1.length) + 544] = msg.sender
                            mem[ceil32(arg1.length) + 608] = arg2
                            mem[ceil32(arg1.length) + 576] = 96
                            mem[ceil32(arg1.length) + 640] = arg1.length
                            if arg1.length:
                                mem[ceil32(arg1.length) + 672] = mem[128]
                                mem[ceil32(arg1.length) + 704 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            emit Registered(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 672 len arg1.length]), address(arg2));
                            stor1.length++
                        else:
                            if sha3(mem[arg1.length + 123 len 5]) == sha3('.ceth'):
                                uint256(stor[sha3(_113 + 2)][]) = Array(len=arg1.length, data=arg1[all])
                                address(stor[_113]) = msg.sender
                                stor1[_113] = arg2
                                mem[ceil32(arg1.length) + 544] = msg.sender
                                mem[ceil32(arg1.length) + 608] = arg2
                                mem[ceil32(arg1.length) + 576] = 96
                                mem[ceil32(arg1.length) + 640] = arg1.length
                                if arg1.length:
                                    mem[ceil32(arg1.length) + 672] = mem[128]
                                    mem[ceil32(arg1.length) + 704 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                                emit Registered(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 672 len arg1.length]), address(arg2));
                                stor1.length++
                            else:
                                mem[ceil32(arg1.length) + 544] = 64
                                mem[ceil32(arg1.length) + 608] = 84
                                mem[ceil32(arg1.length) + 640] = 'either the name is taken, too lo'
                                mem[ceil32(arg1.length) + 672] = 'ng, has invalid characters, or t'
                                mem[ceil32(arg1.length) + 704] = 'he registry is full.'
                                mem[ceil32(arg1.length) + 576] = 192
                                mem[ceil32(arg1.length) + 736] = arg1.length
                                if not arg1.length:
                                    if not arg1.length % 32:
                                        emit Error(string rg1, string rg2):
                                                   64,
                                                   192,
                                                   84,
                                                   'either the name is taken, too lo',
                                                   'ng, has invalid characters, or t',
                                                   'he registry is full.',
                                                   arg1.length,
                                                   mem[ceil32(arg1.length) + 768 len arg1.length],
                                    else:
                                        mem[floor32(arg1.length) + ceil32(arg1.length) + 768] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 800 len arg1.length % 32]
                                        emit Error(string rg1, string rg2):
                                                   64,
                                                   192,
                                                   84,
                                                   'either the name is taken, too lo',
                                                   'ng, has invalid characters, or t',
                                                   'he registry is full.',
                                                   arg1.length,
                                                   mem[ceil32(arg1.length) + 768 len floor32(arg1.length) + 32],
                                else:
                                    mem[ceil32(arg1.length) + 768] = mem[128]
                                    mem[ceil32(arg1.length) + 800 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                                    if not arg1.length % 32:
                                        emit Error(string rg1, string rg2):
                                                   64,
                                                   192,
                                                   84,
                                                   'either the name is taken, too lo',
                                                   'ng, has invalid characters, or t',
                                                   'he registry is full.',
                                                   arg1.length,
                                                   mem[ceil32(arg1.length) + 768 len arg1.length],
                                    else:
                                        mem[floor32(arg1.length) + ceil32(arg1.length) + 768] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 800 len arg1.length % 32]
                                        emit Error(string rg1, string rg2):
                                                   64,
                                                   192,
                                                   84,
                                                   'either the name is taken, too lo',
                                                   'ng, has invalid characters, or t',
                                                   'he registry is full.',
                                                   arg1.length,
                                                   mem[128],
                                                   mem[ceil32(arg1.length) + 800 len floor32(arg1.length)],
}



}
