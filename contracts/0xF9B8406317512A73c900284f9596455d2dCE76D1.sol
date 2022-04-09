contract main {


// =======================  Init code  ======================


uint256 stor12;
mapping of uint256 stor13;
address stor15;

function _fallback() payable {
    stor12 = 5 * 10^6
    require not msg.value
    stor15 = msg.sender
    stor13[stor15] = stor12
    return code.data[206 len 11240]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
const name = 'ROC'

const decimals = 18

const symbol = 'ROC'

const convert(uint256 arg1) = 1


address stor1;
address stor2;
uint256 stor2;
array of uint256 stor3;
uint256 startBlock;
uint256 endBlock;
array of address addresses;
mapping of address userStructs;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor15;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
mapping of address stor22;
mapping of uint256 stor23;
mapping of uint256 stor24;

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function userStructs(address arg1) {
    return userStructs[arg1]
}

function startBlock() {
    return startBlock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1])
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function sub_5e557cf2(?) {
    startBlock = block.timestamp
    endBlock = block.timestamp + (1320 * 24 * 3600)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require msg.sender == stor15
    call stor15 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer_ownership(address arg1) {
    require msg.sender == stor15
    stor15 = arg1
    balanceOf[stor15] = balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
}

function request_dividend(address arg1) payable {
    stor20 = balanceOf[address(arg1)]
    emit Message(stor20);
    stor21 = stor20 * stor19
    emit Message(stor21);
    emit Transfer(stor21, stor15, arg1);
    call arg1 with:
       value stor21 wei
         gas 2300 * is_zero(value) wei
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function stringToUint(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] != 46:
            if mem[idx + 128 len 1] < 48:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            else:
                if mem[idx + 128 len 1] > 57:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
                else:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
        else:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            continue 
    return 0
}

function check_array_add(address arg1) {
    if addresses.length <= 0:
        userStructs[address(arg1)] = arg1
        addresses.length++
        if not addresses.length <= addresses.length + 1:
            idx = addresses.length + 1
            while addresses.length > idx:
                uint256(addresses[idx]) = 0
                idx = idx + 1
                continue 
        address(addresses[addresses.length]) = arg1
    else:
        if userStructs[address(arg1)] != arg1:
            userStructs[address(arg1)] = arg1
            addresses.length++
            if not addresses.length <= addresses.length + 1:
                idx = addresses.length + 1
                while addresses.length > idx:
                    uint256(addresses[idx]) = 0
                    idx = idx + 1
                    continue 
            address(addresses[addresses.length]) = arg1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if addresses.length <= 0:
        userStructs[address(arg1)] = arg1
        addresses.length++
        if not addresses.length <= addresses.length + 1:
            idx = addresses.length + 1
            while addresses.length > idx:
                uint256(addresses[idx]) = 0
                idx = idx + 1
                continue 
        address(addresses[addresses.length]) = arg1
    else:
        if userStructs[address(arg1)] != arg1:
            userStructs[address(arg1)] = arg1
            addresses.length++
            if not addresses.length <= addresses.length + 1:
                idx = addresses.length + 1
                while addresses.length > idx:
                    uint256(addresses[idx]) = 0
                    idx = idx + 1
                    continue 
            address(addresses[addresses.length]) = arg1
    return 1
}

function _fallback() payable {
    emit TRANS(msg.sender, msg.value);
    if msg.sender == stor15:
        stor18 = msg.value
        require totalSupply
        stor19 = stor18 / totalSupply
        emit Message(stor18);
        emit Message(stor19);
        if addresses.length > 0:
            idx = 0
            while idx < addresses.length:
                mem[0] = 8
                if address(addresses[idx]) != stor15:
                    require idx < addresses.length
                    mem[0] = address(addresses[idx])
                    mem[32] = 13
                    stor20 = balanceOf[address(stor8[idx])]
                    emit Message(stor20);
                    stor21 = stor20 * stor19
                    emit Message(stor21);
                    mem[96] = stor21
                    emit Transfer(stor21, stor15, address(addresses[idx]));
                    call address(addresses[idx]) with:
                       value stor21 wei
                         gas 2300 * is_zero(value) wei
                idx = idx + 1
                continue 
    else:
        if not stor1:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
        else:
            if not ext_code.size(stor1):
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 11
                    stor3.length.field_8 = 'eth_mainnet' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 12
                        stor3.length.field_8 = 'eth_ropsten3' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 9
                            stor3.length.field_8 = 'eth_kovan' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            else:
                                stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                bool(stor3.length) = 0
                                stor3.length.field_1 = 11
                                stor3.length.field_8 = 'eth_rinkeby' / 256
                                idx = 0
                                while stor3.length + 31 / 32 > idx:
                                    stor3[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
        require ext_code.size(stor1)
        call stor1.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
        require ext_code.size(address(stor2))
        call address(stor2).getPrice(string rg1) with:
             gas gas_remaining - 710 wei
            args 'URL'
        require ext_call.success
        if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
            stor22[0] = msg.sender
            stor23[address(msg.sender)] = msg.value
            stor24[0] = 0
        else:
            require ext_code.size(address(stor2))
            call address(stor2).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9710 wei
                args 0, 96, 160, 0, 3, 'URL' % 16777216, 0, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=ETH&tsyms', '=USD).USD', Mask(72, -256, 're.com/data/price?fsym=ETH&tsyms', '=USD).USD') << 256
            require ext_call.success
            stor22[ext_call.return_data[0]] = msg.sender
            stor23[address(msg.sender)] = msg.value
            stor24[ext_call.return_data[0]] = ext_call.return_data[0]
}



}
