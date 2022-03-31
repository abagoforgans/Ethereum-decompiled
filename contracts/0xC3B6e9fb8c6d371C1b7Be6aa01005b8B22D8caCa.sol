contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;
uint8 stor6; offset 96
uint32 stor6; offset 64
uint64 stor6;
uint128 stor6;
address stor6; offset 104
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    Mask(96, 0, stor6.field_0) = Mask(96, 0, 'SOAR')
    uint64(stor6.field_0) = uint64('Soarcoin')
    uint32(stor6.field_64) = 0
    uint8(stor6.field_96) = 6
    Mask(152, 0, stor6.field_104) = Mask(152, 104, 'SOAR') >> 104
    Mask(152, 0, stor6.field_104) = Mask(152, 104, 'Soarcoin') >> 104
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    require ext_code.size(code.data[4208 len 20])
    call code.data[4208 len 20].0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor7 = ext_call.return_data[0]
    stor1[address(code.data[4164 len 32])] = 1
    stor1[code.data[4240 len 20]] = 1
    stor3 = code.data[4208 len 20]
    stor2 = code.data[4240 len 20]
    return code.data[390 len 3774]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 0

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const allowance(address arg1, address arg2) = 0


address owner;
mapping of uint8 stor1;
address oracleAddress;
address sub_9d0bcca0Address;
mapping of uint256 stor4;
mapping of uint8 stor5;
uint8 decimals; offset 96
uint64 name;
uint256 symbol; offset 64
uint256 totalSupply;
uint8 stor8;

function name() {
    return Mask(64, 192, name)
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function migrated(address arg1) {
    return bool(stor5[arg1])
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function symbol() {
    return (symbol << 224)
}

function sub_9d0bcca0(?) {
    return sub_9d0bcca0Address
}

function sub_ae3d22ff(?) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function stopMint() {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        stor8 = 1
}

function sub_936c6f36(?) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        stor1[address(arg1)] = 0
}

function sub_c4aa1f63(?) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        owner = arg1
}

function setOracle(address arg1) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        oracleAddress = arg1
        emit OracleSet(address(arg1), tx.origin);
}

function sub_eeeb702e(?) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function mint(uint256 arg1) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        if arg1 <= 0:
            require stor8
        stor4[address(msg.sender)] += arg1
        totalSupply += arg1
        emit Minted(arg1);
}

function balanceOf(address arg1) {
    if stor5[address(arg1)]:
        return stor4[address(arg1)]
    require ext_code.size(sub_9d0bcca0Address)
    call sub_9d0bcca0Address.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return (ext_call.return_data[0] + stor4[address(arg1)])
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if not stor1[address(msg.sender)]:
        if oracleAddress != msg.sender:
            emit 0xda30cab8: msg.sender
            return 0
    if arg3 <= 0:
        return 0
    if not stor5[address(arg2)]:
        require ext_code.size(sub_9d0bcca0Address)
        call sub_9d0bcca0Address.0x70a08231 with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require ext_code.size(sub_9d0bcca0Address)
            call sub_9d0bcca0Address.0xbeabacc8 with:
                 gas gas_remaining - 50 wei
                args address(arg2), address(this.address), ext_call.return_data[0]
            require ext_call.success
            stor4[address(arg2)] += ext_call.return_data[0]
            emit Migration(address(arg2), ext_call.return_data[0]);
        stor5[address(arg2)] = 1
    if stor5[address(arg1)]:
        require stor4[address(arg1)] >= arg3
    else:
        require ext_code.size(sub_9d0bcca0Address)
        call sub_9d0bcca0Address.0x70a08231 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + stor4[address(arg1)] >= arg3
    stor4[address(arg1)] -= arg3
    stor4[arg2] += arg3
    emit Transfer(arg3, block.gasprice, arg1, arg2);
    return 1
}

function sub_618d7ae4(?) payable {
    if oracleAddress != msg.sender:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit 0xda30cab8: msg.sender
    else:
        if stor1[address(msg.sender)]:
            if arg2 <= 0:
                call oracleAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if stor5[address(arg1)]:
                    emit 0x287a2b80: address(arg1), stor4[address(arg1)], arg2, msg.value
                else:
                    require ext_code.size(sub_9d0bcca0Address)
                    call sub_9d0bcca0Address.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    require ext_call.success
                    emit 0x287a2b80: address(arg1), ext_call.return_data[0] + stor4[address(arg1)], arg2, msg.value
            else:
                if not stor5[stor2]:
                    require ext_code.size(sub_9d0bcca0Address)
                    call sub_9d0bcca0Address.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args oracleAddress
                    require ext_call.success
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(sub_9d0bcca0Address)
                        call sub_9d0bcca0Address.0xbeabacc8 with:
                             gas gas_remaining - 50 wei
                            args oracleAddress, address(this.address), ext_call.return_data[0]
                        require ext_call.success
                        stor4[stor2] += ext_call.return_data[0]
                        emit Migration(oracleAddress, ext_call.return_data[0]);
                    stor5[stor2] = 1
                if stor5[address(arg1)]:
                    require stor4[address(arg1)] >= arg2
                else:
                    require ext_code.size(sub_9d0bcca0Address)
                    call sub_9d0bcca0Address.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    require ext_call.success
                    require ext_call.return_data[0] + stor4[address(arg1)] >= arg2
                stor4[address(arg1)] -= arg2
                stor4[stor2] += arg2
                emit Transfer(arg2, block.gasprice, arg1, oracleAddress);
                call arg1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                emit 0x6218e45d: oracleAddress, address(arg1), arg2, msg.value
        else:
            if oracleAddress != msg.sender:
                emit 0xda30cab8: msg.sender
                call oracleAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if stor5[address(arg1)]:
                    emit 0x287a2b80: address(arg1), stor4[address(arg1)], arg2, msg.value
                else:
                    require ext_code.size(sub_9d0bcca0Address)
                    call sub_9d0bcca0Address.0x70a08231 with:
                         gas gas_remaining - 50 wei
                        args arg1
                    require ext_call.success
                    emit 0x287a2b80: address(arg1), ext_call.return_data[0] + stor4[address(arg1)], arg2, msg.value
            else:
                if arg2 <= 0:
                    call oracleAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if stor5[address(arg1)]:
                        emit 0x287a2b80: address(arg1), stor4[address(arg1)], arg2, msg.value
                    else:
                        require ext_code.size(sub_9d0bcca0Address)
                        call sub_9d0bcca0Address.0x70a08231 with:
                             gas gas_remaining - 50 wei
                            args arg1
                        require ext_call.success
                        emit 0x287a2b80: address(arg1), ext_call.return_data[0] + stor4[address(arg1)], arg2, msg.value
                else:
                    if not stor5[stor2]:
                        require ext_code.size(sub_9d0bcca0Address)
                        call sub_9d0bcca0Address.0x70a08231 with:
                             gas gas_remaining - 50 wei
                            args oracleAddress
                        require ext_call.success
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(sub_9d0bcca0Address)
                            call sub_9d0bcca0Address.0xbeabacc8 with:
                                 gas gas_remaining - 50 wei
                                args oracleAddress, address(this.address), ext_call.return_data[0]
                            require ext_call.success
                            stor4[stor2] += ext_call.return_data[0]
                            emit Migration(oracleAddress, ext_call.return_data[0]);
                        stor5[stor2] = 1
                    if stor5[address(arg1)]:
                        require stor4[address(arg1)] >= arg2
                    else:
                        require ext_code.size(sub_9d0bcca0Address)
                        call sub_9d0bcca0Address.0x70a08231 with:
                             gas gas_remaining - 50 wei
                            args arg1
                        require ext_call.success
                        require ext_call.return_data[0] + stor4[address(arg1)] >= arg2
                    stor4[address(arg1)] -= arg2
                    stor4[stor2] += arg2
                    emit Transfer(arg2, block.gasprice, arg1, oracleAddress);
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    emit 0x6218e45d: oracleAddress, address(arg1), arg2, msg.value
}



}
