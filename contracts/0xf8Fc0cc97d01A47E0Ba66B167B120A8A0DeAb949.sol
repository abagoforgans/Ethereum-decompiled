contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0;
uint16 stor0; offset 8
address stor3;

function _fallback() payable {
    uint8(stor0.field_0) = 1
    uint16(stor0.field_8) = 0
    stor0.field_256 % 1 = 0
    require not msg.value
    stor3 = code.data[3781 len 20]
    require ext_code.size(code.data[3781 len 20])
    call code.data[3781 len 20].0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 100201707171503 == ext_call.return_data[0]
    return code.data[231 len 3538]
}



// =====================  Runtime code  =====================


const icoEndTime = (418176 * 24 * 3600)

const contractVersion = 300201707171440

const icoStartTime = (417096 * 24 * 3600)


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
mapping of uint256 abandonedIcoBalances;
address stor2;
address stor3;

function icoPhase() {
    return bool(uint8(stor0.field_0))
}

function icoAbandoned() {
    return bool(uint8(stor0.field_8))
}

function abandonedIcoBalances(address arg1) {
    return abandonedIcoBalances[arg1]
}

function abandonedFundWithdrawal() {
    require uint8(stor0.field_8)
    require abandonedIcoBalances[address(msg.sender)]
    abandonedIcoBalances[address(msg.sender)] = 0
    call msg.sender with:
       value abandonedIcoBalances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setSiftContractAddress(address arg1) {
    require ext_code.size(stor3)
    call stor3.0xbbb896ad with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require not uint8(stor0.field_16)
    stor2 = arg1
    require ext_code.size(arg1)
    call arg1.0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 500201707171440 == ext_call.return_data[0]
    uint8(stor0.field_16) = 1
}

function close() {
    require ext_code.size(stor3)
    call stor3.0xbbb896ad with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require uint8(stor0.field_16)
    require ext_code.size(stor2)
    call stor2.isClosed() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    if not uint8(stor0.field_0):
        require uint8(stor0.field_8)
    require block.timestamp > 418176 * 24 * 3600
    uint8(stor0.field_0) = 0
    emit IcoClosed()
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require uint8(stor0.field_16)
    require ext_code.size(stor2)
    call stor2.isClosed() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    if not uint8(stor0.field_0):
        require uint8(stor0.field_8)
    require block.timestamp >= 417096 * 24 * 3600
    require block.timestamp <= 418176 * 24 * 3600
    require 10^16 * msg.value / 10^16 <= msg.value
    if msg.value / 10^16 > 0:
        require ext_code.size(stor2)
        call stor2.mintTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / 10^16
        require ext_call.success
    if msg.value - (10^16 * msg.value / 10^16) > 0:
        call msg.sender with:
           value msg.value - (10^16 * msg.value / 10^16) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function abandon(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(stor3)
    call stor3.0xbbb896ad with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require uint8(stor0.field_16)
    require ext_code.size(stor2)
    call stor2.isClosed() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    if not uint8(stor0.field_0):
        require uint8(stor0.field_8)
    require block.timestamp > 418176 * 24 * 3600
    require not uint8(stor0.field_8)
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.tokenHolderCount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    s = 0
    s = 0
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(stor2)
        call stor2.tokenHolder(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args idx
        require ext_call.success
        mem[ceil32(arg1.length) + 160] = 0
        mem[ceil32(arg1.length) + 132] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if eth.balance(this.address) / ext_call.return_data[0] * ext_call.return_data[0] < 1:
            s = eth.balance(this.address) / ext_call.return_data[0] * ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require (eth.balance(this.address) / ext_call.return_data[0] * ext_call.return_data[0]) + abandonedIcoBalances[address(ext_call.return_data[0])] >= abandonedIcoBalances[address(ext_call.return_data[0])]
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 1
        abandonedIcoBalances[address(ext_call.return_data[0])] += eth.balance(this.address) / ext_call.return_data[0] * ext_call.return_data[0]
        require eth.balance(this.address) / ext_call.return_data[0] * ext_call.return_data[0] >= 0
        s = eth.balance(this.address) / ext_call.return_data[0] * ext_call.return_data[0]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    uint8(stor0.field_8) = 1
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit IcoAbandoned(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length]));
    require 0 <= eth.balance(this.address)
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            require eth.balance(this.address) + abandonedIcoBalances[address(msg.sender)] >= abandonedIcoBalances[address(msg.sender)]
            abandonedIcoBalances[address(msg.sender)] += eth.balance(this.address)
}



}
