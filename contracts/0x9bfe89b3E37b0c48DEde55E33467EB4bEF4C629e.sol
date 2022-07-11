contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const GST2 = 0xb3f879cb30fe243b4dfee438691c04


address owner;
address controllerAddress;
uint256 count;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 8
uint256 stor3;
uint256 sub_58973576;
mapping of uint256 sub_38da689e;
mapping of address sub_05e75335;

function sub_05e75335(?) {
    require calldata.size - 4 >= 32
    return sub_05e75335[arg1]
}

function count() {
    return count
}

function sub_38da689e(?) {
    require calldata.size - 4 >= 32
    return sub_38da689e[arg1]
}

function sub_3b5d7e97(?) {
    return bool(uint8(stor3.field_0))
}

function buyLimit() {
    return bool(uint8(stor3.field_8))
}

function sub_58973576(?) {
    return sub_58973576
}

function owner() {
    return owner
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
  stop
}

function sub_8f201dbd(?) {
    require msg.sender == owner
    Mask(248, 0, stor3.field_8) = Mask(248, 0, not uint8(stor3.field_8))
}

function sub_b41bfe75(?) {
    require msg.sender == owner
    uint256(stor3.field_0) = not uint8(stor3.field_0) or Mask(248, 8, uint256(stor3.field_0))
}

function sub_bbad99a5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    sub_58973576 = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e4538ae0(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.airDropPot_() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_44a9f953(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.airDropTracker_() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_43bf69fe(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_30231ddb(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function mintGasTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deploy(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    create2 contract with 0 wei
                    salt: arg2
                    code: arg1[all]
    mem[ceil32(arg1.length) + 128] = address(create2.new_address)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_8778a110(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    return address(sha3(0, arg3, arg1, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])))
}

function burnGasToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function airdrop(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require block.timestamp
    if block.difficulty + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath add failed'
    if sha3(block.coinbase) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.gas_limit < 0:
        revert with 0, 'SafeMath add failed'
    if sha3(arg2) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.number < 0:
        revert with 0, 'SafeMath add failed'
    require ext_code.size(arg1)
    staticcall arg1.airDropTracker_() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sha3(block.number + (sha3(arg2) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(arg2) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
        return 0
    return 1
}

function sub_7e079ace(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender == owner:
        if bool(uint8(stor3.field_8)) != 1:
            require eth.balance(this.address) >= 10^17
            s = 0
            s = 0
            while gas_remaining >= 10^6:
                _2407 = mem[64]
                mem[64] = mem[64] + ceil32(arg2.length) + 32
                mem[_2407] = arg2.length
                mem[_2407 + 32 len arg2.length] = arg2[all]
                mem[_2407 + arg2.length + 32] = 0
                _2413 = mem[64]
                t = _2407 + 32
                u = mem[64] + 32
                idx = mem[_2407]
                while idx >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[_2407]) + 32] = mem[_2407 + floor32(mem[_2407]) + -(mem[_2407] % 32) + 64 len mem[_2407] % 32] or Mask(8 * -(mem[_2407] % 32) + 32, -(8 * -(mem[_2407] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2407]) + 32])
                _4803 = mem[64]
                mem[mem[64]] = arg2.length + _2413 - mem[64]
                mem[64] = arg2.length + _2413 + 32
                _4805 = sha3(mem[_4803 + 32 len mem[_4803]])
                mem[arg2.length + _2413 + 64] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[arg2.length + _2413 + 65] = address(this.address)
                mem[arg2.length + _2413 + 85] = s
                mem[arg2.length + _2413 + 117] = _4805
                mem[arg2.length + _2413 + 32] = 85
                mem[arg2.length + _2413 + 181] = address(sha3(0, this.address, s, _4805))
                mem[arg2.length + _2413 + 149] = 20
                require block.timestamp
                mem[arg2.length + _2413 + 233] = address(block.coinbase)
                mem[arg2.length + _2413 + 201] = 20
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(block.coinbase) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if sha3(address(sha3(0, this.address, s, _4805))) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[arg2.length + _2413 + 285] = block.number + (sha3(address(sha3(0, this.address, s, _4805))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp
                mem[arg2.length + _2413 + 253] = 32
                mem[64] = arg2.length + _2413 + 317
                require ext_code.size(arg1)
                staticcall arg1.airDropTracker_() with:
                        gas gas_remaining wei
                mem[arg2.length + _2413 + 317] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sha3(block.number + (sha3(address(sha3(0, this.address, s, _4805))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(sha3(0, this.address, s, _4805))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                    s = sha3(0, this.address, s, _4805)
                    s = s + 1
                    continue 
                call address(sha3(0, this.address, s, _4805)) with:
                   value 10^17 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if owner != msg.sender:
                    if controllerAddress != msg.sender:
                        require this.address == msg.sender
                create2 contract with 0 wei
                                salt: s
                                code: arg2[all]
                sub_38da689e[stor2] = s
                sub_05e75335[stor2] = address(sha3(0, this.address, s, _4805))
                count++
                if owner != msg.sender:
                    if controllerAddress != msg.sender:
                        require this.address == msg.sender
                require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= sub_58973576:
                    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                    call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_58973576
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            require ext_code.size(arg1)
            staticcall arg1.airDropPot_() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > 4 * 10^17
            require eth.balance(this.address) >= 10^17
            s = 0
            s = 0
            while gas_remaining >= 10^6:
                _2408 = mem[64]
                mem[64] = mem[64] + ceil32(arg2.length) + 32
                mem[_2408] = arg2.length
                mem[_2408 + 32 len arg2.length] = arg2[all]
                mem[_2408 + arg2.length + 32] = 0
                _2415 = mem[64]
                t = _2408 + 32
                u = mem[64] + 32
                idx = mem[_2408]
                while idx >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[_2408]) + 32] = mem[_2408 + floor32(mem[_2408]) + -(mem[_2408] % 32) + 64 len mem[_2408] % 32] or Mask(8 * -(mem[_2408] % 32) + 32, -(8 * -(mem[_2408] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2408]) + 32])
                _4813 = mem[64]
                mem[mem[64]] = arg2.length + _2415 - mem[64]
                mem[64] = arg2.length + _2415 + 32
                _4815 = sha3(mem[_4813 + 32 len mem[_4813]])
                mem[arg2.length + _2415 + 64] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[arg2.length + _2415 + 65] = address(this.address)
                mem[arg2.length + _2415 + 85] = s
                mem[arg2.length + _2415 + 117] = _4815
                mem[arg2.length + _2415 + 32] = 85
                mem[arg2.length + _2415 + 181] = address(sha3(0, this.address, s, _4815))
                mem[arg2.length + _2415 + 149] = 20
                require block.timestamp
                mem[arg2.length + _2415 + 233] = address(block.coinbase)
                mem[arg2.length + _2415 + 201] = 20
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(block.coinbase) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if sha3(address(sha3(0, this.address, s, _4815))) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[arg2.length + _2415 + 285] = block.number + (sha3(address(sha3(0, this.address, s, _4815))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp
                mem[arg2.length + _2415 + 253] = 32
                mem[64] = arg2.length + _2415 + 317
                require ext_code.size(arg1)
                staticcall arg1.airDropTracker_() with:
                        gas gas_remaining wei
                mem[arg2.length + _2415 + 317] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sha3(block.number + (sha3(address(sha3(0, this.address, s, _4815))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(sha3(0, this.address, s, _4815))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                    s = sha3(0, this.address, s, _4815)
                    s = s + 1
                    continue 
                call address(sha3(0, this.address, s, _4815)) with:
                   value 10^17 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if owner != msg.sender:
                    if controllerAddress != msg.sender:
                        require this.address == msg.sender
                create2 contract with 0 wei
                                salt: s
                                code: arg2[all]
                sub_38da689e[stor2] = s
                sub_05e75335[stor2] = address(sha3(0, this.address, s, _4815))
                count++
                if owner != msg.sender:
                    if controllerAddress != msg.sender:
                        require this.address == msg.sender
                require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= sub_58973576:
                    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                    call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_58973576
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    else:
        if msg.sender == controllerAddress:
            if bool(uint8(stor3.field_8)) != 1:
                require eth.balance(this.address) >= 10^17
                s = 0
                s = 0
                while gas_remaining >= 10^6:
                    _2409 = mem[64]
                    mem[64] = mem[64] + ceil32(arg2.length) + 32
                    mem[_2409] = arg2.length
                    mem[_2409 + 32 len arg2.length] = arg2[all]
                    mem[_2409 + arg2.length + 32] = 0
                    _2417 = mem[64]
                    t = _2409 + 32
                    u = mem[64] + 32
                    idx = mem[_2409]
                    while idx >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2409]) + 32] = mem[_2409 + floor32(mem[_2409]) + -(mem[_2409] % 32) + 64 len mem[_2409] % 32] or Mask(8 * -(mem[_2409] % 32) + 32, -(8 * -(mem[_2409] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2409]) + 32])
                    _4823 = mem[64]
                    mem[mem[64]] = arg2.length + _2417 - mem[64]
                    mem[64] = arg2.length + _2417 + 32
                    _4825 = sha3(mem[_4823 + 32 len mem[_4823]])
                    mem[arg2.length + _2417 + 64] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[arg2.length + _2417 + 65] = address(this.address)
                    mem[arg2.length + _2417 + 85] = s
                    mem[arg2.length + _2417 + 117] = _4825
                    mem[arg2.length + _2417 + 32] = 85
                    mem[arg2.length + _2417 + 181] = address(sha3(0, this.address, s, _4825))
                    mem[arg2.length + _2417 + 149] = 20
                    require block.timestamp
                    mem[arg2.length + _2417 + 233] = address(block.coinbase)
                    mem[arg2.length + _2417 + 201] = 20
                    if block.difficulty + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath add failed'
                    if sha3(block.coinbase) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.gas_limit < 0:
                        revert with 0, 'SafeMath add failed'
                    if sha3(address(sha3(0, this.address, s, _4825))) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.number < 0:
                        revert with 0, 'SafeMath add failed'
                    mem[arg2.length + _2417 + 285] = block.number + (sha3(address(sha3(0, this.address, s, _4825))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp
                    mem[arg2.length + _2417 + 253] = 32
                    mem[64] = arg2.length + _2417 + 317
                    require ext_code.size(arg1)
                    staticcall arg1.airDropTracker_() with:
                            gas gas_remaining wei
                    mem[arg2.length + _2417 + 317] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sha3(block.number + (sha3(address(sha3(0, this.address, s, _4825))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(sha3(0, this.address, s, _4825))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(0, this.address, s, _4825)
                        s = s + 1
                        continue 
                    call address(sha3(0, this.address, s, _4825)) with:
                       value 10^17 wei
                         gas 0 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    create2 contract with 0 wei
                                    salt: s
                                    code: arg2[all]
                    sub_38da689e[stor2] = s
                    sub_05e75335[stor2] = address(sha3(0, this.address, s, _4825))
                    count++
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                    staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= sub_58973576:
                        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_58973576
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                require ext_code.size(arg1)
                staticcall arg1.airDropPot_() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 4 * 10^17
                require eth.balance(this.address) >= 10^17
                s = 0
                s = 0
                while gas_remaining >= 10^6:
                    _2410 = mem[64]
                    mem[64] = mem[64] + ceil32(arg2.length) + 32
                    mem[_2410] = arg2.length
                    mem[_2410 + 32 len arg2.length] = arg2[all]
                    mem[_2410 + arg2.length + 32] = 0
                    _2419 = mem[64]
                    t = _2410 + 32
                    u = mem[64] + 32
                    idx = mem[_2410]
                    while idx >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2410]) + 32] = mem[_2410 + floor32(mem[_2410]) + -(mem[_2410] % 32) + 64 len mem[_2410] % 32] or Mask(8 * -(mem[_2410] % 32) + 32, -(8 * -(mem[_2410] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2410]) + 32])
                    _4833 = mem[64]
                    mem[mem[64]] = arg2.length + _2419 - mem[64]
                    mem[64] = arg2.length + _2419 + 32
                    _4835 = sha3(mem[_4833 + 32 len mem[_4833]])
                    mem[arg2.length + _2419 + 64] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[arg2.length + _2419 + 65] = address(this.address)
                    mem[arg2.length + _2419 + 85] = s
                    mem[arg2.length + _2419 + 117] = _4835
                    mem[arg2.length + _2419 + 32] = 85
                    mem[arg2.length + _2419 + 181] = address(sha3(0, this.address, s, _4835))
                    mem[arg2.length + _2419 + 149] = 20
                    require block.timestamp
                    mem[arg2.length + _2419 + 233] = address(block.coinbase)
                    mem[arg2.length + _2419 + 201] = 20
                    if block.difficulty + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath add failed'
                    if sha3(block.coinbase) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.gas_limit < 0:
                        revert with 0, 'SafeMath add failed'
                    if sha3(address(sha3(0, this.address, s, _4835))) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.number < 0:
                        revert with 0, 'SafeMath add failed'
                    mem[arg2.length + _2419 + 285] = block.number + (sha3(address(sha3(0, this.address, s, _4835))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp
                    mem[arg2.length + _2419 + 253] = 32
                    mem[64] = arg2.length + _2419 + 317
                    require ext_code.size(arg1)
                    staticcall arg1.airDropTracker_() with:
                            gas gas_remaining wei
                    mem[arg2.length + _2419 + 317] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sha3(block.number + (sha3(address(sha3(0, this.address, s, _4835))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(sha3(0, this.address, s, _4835))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(0, this.address, s, _4835)
                        s = s + 1
                        continue 
                    call address(sha3(0, this.address, s, _4835)) with:
                       value 10^17 wei
                         gas 0 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    create2 contract with 0 wei
                                    salt: s
                                    code: arg2[all]
                    sub_38da689e[stor2] = s
                    sub_05e75335[stor2] = address(sha3(0, this.address, s, _4835))
                    count++
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                    staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= sub_58973576:
                        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_58973576
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            require this.address == msg.sender
            if bool(uint8(stor3.field_8)) != 1:
                require eth.balance(this.address) >= 10^17
                s = 0
                s = 0
                while gas_remaining >= 10^6:
                    _2411 = mem[64]
                    mem[64] = mem[64] + ceil32(arg2.length) + 32
                    mem[_2411] = arg2.length
                    mem[_2411 + 32 len arg2.length] = arg2[all]
                    mem[_2411 + arg2.length + 32] = 0
                    _2421 = mem[64]
                    t = _2411 + 32
                    u = mem[64] + 32
                    idx = mem[_2411]
                    while idx >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2411]) + 32] = mem[_2411 + floor32(mem[_2411]) + -(mem[_2411] % 32) + 64 len mem[_2411] % 32] or Mask(8 * -(mem[_2411] % 32) + 32, -(8 * -(mem[_2411] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2411]) + 32])
                    _4843 = mem[64]
                    mem[mem[64]] = arg2.length + _2421 - mem[64]
                    mem[64] = arg2.length + _2421 + 32
                    _4845 = sha3(mem[_4843 + 32 len mem[_4843]])
                    mem[arg2.length + _2421 + 64] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[arg2.length + _2421 + 65] = address(this.address)
                    mem[arg2.length + _2421 + 85] = s
                    mem[arg2.length + _2421 + 117] = _4845
                    mem[arg2.length + _2421 + 32] = 85
                    mem[arg2.length + _2421 + 181] = address(sha3(0, this.address, s, _4845))
                    mem[arg2.length + _2421 + 149] = 20
                    require block.timestamp
                    mem[arg2.length + _2421 + 233] = address(block.coinbase)
                    mem[arg2.length + _2421 + 201] = 20
                    if block.difficulty + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath add failed'
                    if sha3(block.coinbase) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.gas_limit < 0:
                        revert with 0, 'SafeMath add failed'
                    if sha3(address(sha3(0, this.address, s, _4845))) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.number < 0:
                        revert with 0, 'SafeMath add failed'
                    mem[arg2.length + _2421 + 285] = block.number + (sha3(address(sha3(0, this.address, s, _4845))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp
                    mem[arg2.length + _2421 + 253] = 32
                    mem[64] = arg2.length + _2421 + 317
                    require ext_code.size(arg1)
                    staticcall arg1.airDropTracker_() with:
                            gas gas_remaining wei
                    mem[arg2.length + _2421 + 317] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sha3(block.number + (sha3(address(sha3(0, this.address, s, _4845))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(sha3(0, this.address, s, _4845))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(0, this.address, s, _4845)
                        s = s + 1
                        continue 
                    call address(sha3(0, this.address, s, _4845)) with:
                       value 10^17 wei
                         gas 0 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    create2 contract with 0 wei
                                    salt: s
                                    code: arg2[all]
                    sub_38da689e[stor2] = s
                    sub_05e75335[stor2] = address(sha3(0, this.address, s, _4845))
                    count++
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                    staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= sub_58973576:
                        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_58973576
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                require ext_code.size(arg1)
                staticcall arg1.airDropPot_() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] > 4 * 10^17
                require eth.balance(this.address) >= 10^17
                s = 0
                s = 0
                while gas_remaining >= 10^6:
                    _2412 = mem[64]
                    mem[64] = mem[64] + ceil32(arg2.length) + 32
                    mem[_2412] = arg2.length
                    mem[_2412 + 32 len arg2.length] = arg2[all]
                    mem[_2412 + arg2.length + 32] = 0
                    _2423 = mem[64]
                    t = _2412 + 32
                    u = mem[64] + 32
                    idx = mem[_2412]
                    while idx >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2412]) + 32] = mem[_2412 + floor32(mem[_2412]) + -(mem[_2412] % 32) + 64 len mem[_2412] % 32] or Mask(8 * -(mem[_2412] % 32) + 32, -(8 * -(mem[_2412] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2412]) + 32])
                    _4853 = mem[64]
                    mem[mem[64]] = arg2.length + _2423 - mem[64]
                    mem[64] = arg2.length + _2423 + 32
                    _4855 = sha3(mem[_4853 + 32 len mem[_4853]])
                    mem[arg2.length + _2423 + 64] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[arg2.length + _2423 + 65] = address(this.address)
                    mem[arg2.length + _2423 + 85] = s
                    mem[arg2.length + _2423 + 117] = _4855
                    mem[arg2.length + _2423 + 32] = 85
                    mem[arg2.length + _2423 + 181] = address(sha3(0, this.address, s, _4855))
                    mem[arg2.length + _2423 + 149] = 20
                    require block.timestamp
                    mem[arg2.length + _2423 + 233] = address(block.coinbase)
                    mem[arg2.length + _2423 + 201] = 20
                    if block.difficulty + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath add failed'
                    if sha3(block.coinbase) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.gas_limit < 0:
                        revert with 0, 'SafeMath add failed'
                    if sha3(address(sha3(0, this.address, s, _4855))) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.number < 0:
                        revert with 0, 'SafeMath add failed'
                    mem[arg2.length + _2423 + 285] = block.number + (sha3(address(sha3(0, this.address, s, _4855))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp
                    mem[arg2.length + _2423 + 253] = 32
                    mem[64] = arg2.length + _2423 + 317
                    require ext_code.size(arg1)
                    staticcall arg1.airDropTracker_() with:
                            gas gas_remaining wei
                    mem[arg2.length + _2423 + 317] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sha3(block.number + (sha3(address(sha3(0, this.address, s, _4855))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(sha3(0, this.address, s, _4855))) / block.timestamp) + block.gas_limit + (sha3(block.coinbase) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0] + 1:
                        s = sha3(0, this.address, s, _4855)
                        s = s + 1
                        continue 
                    call address(sha3(0, this.address, s, _4855)) with:
                       value 10^17 wei
                         gas 0 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    create2 contract with 0 wei
                                    salt: s
                                    code: arg2[all]
                    sub_38da689e[stor2] = s
                    sub_05e75335[stor2] = address(sha3(0, this.address, s, _4855))
                    count++
                    if owner != msg.sender:
                        if controllerAddress != msg.sender:
                            require this.address == msg.sender
                    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                    staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= sub_58973576:
                        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
                        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_58973576
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
    if owner != msg.sender:
        if controllerAddress != msg.sender:
            require this.address == msg.sender
    require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
    staticcall 0xb3f879cb30fe243b4dfee438691c04.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_58973576:
        require ext_code.size(0xb3f879cb30fe243b4dfee438691c04)
        call 0x0000000000b3f879cb30fe243b4dfee438691c04.free(uint256 arg1) with:
             gas gas_remaining wei
            args sub_58973576
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
