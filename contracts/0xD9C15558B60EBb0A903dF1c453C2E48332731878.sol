contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
address stor0; offset 24
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
array of uint256 stor6;

function _fallback() payable {
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 2
    uint8(stor0.field_16) = 3
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    require not msg.value
    address(stor0.field_24) = msg.sender
    stor1 = code.data[5929 len 20]
    stor2 = 1
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    stor6[stor6.length] = 0
    stor3 = 5000
    stor4 = 12 * 10^15
    create contract with 0 wei
                    code: code.data[5414 len 503], this.address
    require create.new_address
    stor5 = address(create.new_address)
    return code.data[384 len 5030]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address owner; offset 24
uint256 stor0; offset 16
uint256 stor0; offset 8
uint8 frozen; offset 160
address sub_c5ab5a13Address;
uint256 nextSaleId;
uint256 sub_66529e3f;
uint256 stor4;
address stor5;
array of uint256 sub_095c21e3;
mapping of struct sales;

function frozen() {
    return bool(frozen)
}

function sub_095c21e3(?) {
    require arg1 < sub_095c21e3.length
    return sub_095c21e3[arg1]
}

function sub_66529e3f(?) {
    return sub_66529e3f
}

function salesCount() {
    return sub_095c21e3.length
}

function owner() {
    return owner
}

function sales(uint256 arg1) {
    return sales[arg1].field_0, 
           sales[arg1].field_256,
           sales[arg1].field_512,
           sales[arg1].field_768,
           sales[arg1].field_1024,
           sales[arg1].field_1280,
           sales[arg1].field_1536,
           sales[arg1].field_1792
}

function sub_c5ab5a13(?) {
    return sub_c5ab5a13Address
}

function nextSaleId() {
    return nextSaleId
}

function _fallback() payable {
  stop
}

function sub_9a1f2a57(?) {
    require owner == msg.sender
    stor5 = arg1
}

function sub_0ba50baa(?) {
    require owner == msg.sender
    sub_66529e3f = arg1
}

function sub_89f21efc(?) {
    require owner == msg.sender
    sub_c5ab5a13Address = arg1
}

function sub_cc424839(?) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_1a371932(?) {
    require ext_code.size(stor5)
    call stor5.0x740410dc with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(stor0.field_0), arg2
    require ext_call.success
}

function cancelSale(uint256 arg1) {
    require sales[arg1].field_0 == msg.sender
    require sales[arg1].field_768
    require ext_code.size(sub_c5ab5a13Address)
    call sub_c5ab5a13Address.assets(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args sales[arg1].field_768
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args sales[arg1].field_0, sales[arg1].field_1024 * sales[arg1].field_1280
    require ext_call.success
    sales[arg1].field_1280 = 0
    require sub_095c21e3.length - 1 < sub_095c21e3.length
    require sales[arg1].field_1536 < sub_095c21e3.length
    sub_095c21e3[stor7[arg1].field_1536] = sub_095c21e3[sub_095c21e3.length]
    sub_095c21e3.length--
    if not sub_095c21e3.length <= sub_095c21e3.length - 1:
        sub_095c21e3[sub_095c21e3.length] = 0
        idx = sub_095c21e3.length
        while sub_095c21e3.length > idx:
            sub_095c21e3[idx] = 0
            idx = idx + 1
            continue 
    if sales[arg1].field_1536 == sub_095c21e3.length:
        sales[arg1].field_1536 = 0
        emit 0xb5dc9baf: arg1
        if eth.balance(msg.sender) >= stor4:
        call msg.sender with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if sales[arg1].field_1536 < sub_095c21e3.length:
            sales[stor6[sales[arg1].field_1536]].field_1536 = sales[arg1].field_1536
            sales[arg1].field_1536 = 0
            emit 0xb5dc9baf: arg1
            if eth.balance(msg.sender) >= stor4:
            call msg.sender with:
               value stor4 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert 
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require not frozen
    require 0 < arg4.length
    if Mask(8, 248, mem[128]) != Mask(8, 248, uint8(stor0.field_0)):
        if Mask(8, 248, mem[128]) == Mask(248, 0, stor0.field_8) << 248:
            s = 0
            idx = 1
            while idx < 5:
                require idx < arg4.length
                s = (256 * s) + mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            s = 0
            idx = 5
            while idx < 9:
                require idx < arg4.length
                s = (256 * s) + mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            s = 0
            idx = 9
            while idx < 13:
                require idx < arg4.length
                s = (256 * s) + mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            s = 0
            idx = 13
            while idx < 17:
                require idx < arg4.length
                s = (256 * s) + mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            revert 
        require Mask(8, 248, mem[128]) == Mask(240, 0, stor0.field_16) << 248
        require sub_66529e3f
        require not arg2 % sub_66529e3f
        require ext_code.size(sub_c5ab5a13Address)
        call sub_c5ab5a13Address.assets(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args 1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args address(arg1), address(stor0.field_0), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require sub_66529e3f
        require ext_code.size(stor5)
        call stor5.0xbe0140a6 with:
             gas gas_remaining - 50 wei
            args address(arg1), 1, arg2 / sub_66529e3f
        require ext_call.success
        if eth.balance(arg1) < stor4:
            call arg1 with:
               value stor4 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        emit 0x30a29a0a: arg1
    s = 0
    idx = 1
    while idx < 5:
        require idx < arg4.length
        s = (256 * s) + mem[idx + 128 len 1]
        idx = idx + 1
        continue 
    if arg2 != 0:
        if sales[0].field_512:
            if not arg2 % sales[0].field_512:
                if 0 < nextSaleId:
                    if sales[0].field_512:
                        if arg2 / sales[0].field_512 <= sales[0].field_1280:
                            if sales[0].field_256:
                                if ext_code.size(sub_c5ab5a13Address):
                                    call sub_c5ab5a13Address.assets(uint256 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args sales[0].field_256
                                    if ext_call.success:
                                        if ext_code.size(address(ext_call.return_data[0])):
                                            call address(ext_call.return_data[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
                                                 gas gas_remaining - 50 wei
                                                args address(arg1), address(this.address), arg2
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    sales[0].field_1280 -= arg2 / sales[0].field_512
                                                    if sales[0].field_256:
                                                        if ext_code.size(sub_c5ab5a13Address):
                                                            call sub_c5ab5a13Address.assets(uint256 rg1) with:
                                                                 gas gas_remaining - 50 wei
                                                                args sales[0].field_256
                                                            if ext_call.success:
                                                                if ext_code.size(address(ext_call.return_data[0])):
                                                                    call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                                                         gas gas_remaining - 50 wei
                                                                        args sales[0].field_0, arg2
                                                                    if ext_call.success:
                                                                        if ext_call.return_data[0]:
                                                                            if sales[0].field_768:
                                                                                if ext_code.size(sub_c5ab5a13Address):
                                                                                    call sub_c5ab5a13Address.assets(uint256 rg1) with:
                                                                                         gas gas_remaining - 50 wei
                                                                                        args sales[0].field_768
                                                                                    if ext_call.success:
                                                                                        if ext_code.size(address(ext_call.return_data[0])):
                                                                                            call address(ext_call.return_data[0]).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining - 50 wei
                                                                                                args address(arg1), sales[0].field_1024 * arg2 / sales[0].field_512
                                                                                            if ext_call.success:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if sales[0].field_1280 - (arg2 / sales[0].field_512):
                                                                                                        emit 0xb5dc9baf: 0
                                                                                                        if eth.balance(arg1) >= stor4:
                                                                                                        call arg1 with:
                                                                                                           value stor4 wei
                                                                                                             gas 2300 * is_zero(value) wei
                                                                                                        if ext_call.success:
                                                                                                    else:
                                                                                                        if not sales[0].field_1536:
                                                                                                            emit 0xb5dc9baf: 0
                                                                                                            if eth.balance(arg1) >= stor4:
                                                                                                            call arg1 with:
                                                                                                               value stor4 wei
                                                                                                                 gas 2300 * is_zero(value) wei
                                                                                                            if ext_call.success:
                                                                                                        else:
                                                                                                            if sub_095c21e3.length - 1 < sub_095c21e3.length:
                                                                                                                if sales[0].field_1536 < sub_095c21e3.length:
                                                                                                                    sub_095c21e3[stor7[0].field_1536] = sub_095c21e3[sub_095c21e3.length]
                                                                                                                    sub_095c21e3.length--
                                                                                                                    if not sub_095c21e3.length <= sub_095c21e3.length - 1:
                                                                                                                        sub_095c21e3[sub_095c21e3.length] = 0
                                                                                                                        idx = sub_095c21e3.length
                                                                                                                        while sub_095c21e3.length > idx:
                                                                                                                            sub_095c21e3[idx] = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                    if sales[0].field_1536 == sub_095c21e3.length:
                                                                                                                        sales[0].field_1536 = 0
                                                                                                                        emit 0xb5dc9baf: 0
                                                                                                                        if eth.balance(arg1) >= stor4:
                                                                                                                        call arg1 with:
                                                                                                                           value stor4 wei
                                                                                                                             gas 2300 * is_zero(value) wei
                                                                                                                        if ext_call.success:
                                                                                                                    else:
                                                                                                                        if sales[0].field_1536 < sub_095c21e3.length:
                                                                                                                            sales[stor6[sales[0].field_1536]].field_1536 = sales[0].field_1536
                                                                                                                            sales[0].field_1536 = 0
                                                                                                                            emit 0xb5dc9baf: 0
                                                                                                                            if eth.balance(arg1) >= stor4:
                                                                                                                            call arg1 with:
                                                                                                                               value stor4 wei
                                                                                                                                 gas 2300 * is_zero(value) wei
                                                                                                                            if ext_call.success:
    revert 
}



}
