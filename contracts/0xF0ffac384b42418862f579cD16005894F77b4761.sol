contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rootHash;
mapping of uint8 stor7;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function rootHash() payable {
    return rootHash
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function hash(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sha3(address(arg1), arg2)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_89b359da(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require 0 < arg1.length
    idx = 1
    s = mem[128]
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[96]
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _30 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_30 + 32 len mem[_30]])
            continue 
        _33 = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _33
        _35 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_35 + 32 len mem[_35]])
        continue 
    return (s == rootHash)
}

function sub_90e9dde8(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[128] = address(cd[4])
    mem[160] = cd[36]
    mem[96] = 64
    require 0 < ('cd', 68).length
    if ('cd', 68).length == 1:
        require ('cd', 68)[0] == sha3(address(cd[4]), cd[36])
        mem[192] = ('cd', 68).length
        mem[224 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
        mem[(32 * ('cd', 68).length) + 224] = ('cd', 100).length
        mem[(32 * ('cd', 68).length) + 256 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
        require 0 < ('cd', 68).length
        idx = 1
        s = mem[224]
        while idx < ('cd', 68).length:
            require idx < mem[(32 * ('cd', 68).length) + 224]
            require idx < mem[192]
            if not mem[(32 * idx) + (32 * ('cd', 68).length) + 256]:
                mem[mem[64] + 32] = mem[(32 * idx) + 224]
                mem[mem[64] + 64] = s
                _126 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_126 + 32 len mem[_126]])
                continue 
            _129 = mem[(32 * idx) + 224]
            mem[mem[64] + 32] = s
            mem[mem[64] + 64] = _129
            _131 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_131 + 32 len mem[_131]])
            continue 
    else:
        if ('cd', 68)[0] == sha3(address(cd[4]), cd[36]):
            mem[192] = ('cd', 68).length
            mem[224 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
            mem[(32 * ('cd', 68).length) + 224] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + 256 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
            require 0 < ('cd', 68).length
            idx = 1
            s = mem[224]
            while idx < ('cd', 68).length:
                require idx < mem[(32 * ('cd', 68).length) + 224]
                require idx < mem[192]
                if not mem[(32 * idx) + (32 * ('cd', 68).length) + 256]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 224]
                    mem[mem[64] + 64] = s
                    _98 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_98 + 32 len mem[_98]])
                    continue 
                _101 = mem[(32 * idx) + 224]
                mem[mem[64] + 32] = s
                mem[mem[64] + 64] = _101
                _103 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_103 + 32 len mem[_103]])
                continue 
        else:
            require 1 < ('cd', 68).length
            require ('cd', 68)[1] == sha3(address(cd[4]), cd[36])
            mem[192] = ('cd', 68).length
            mem[224 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
            mem[(32 * ('cd', 68).length) + 224] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + 256 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
            require 0 < ('cd', 68).length
            idx = 1
            s = mem[224]
            while idx < ('cd', 68).length:
                require idx < mem[(32 * ('cd', 68).length) + 224]
                require idx < mem[192]
                if not mem[(32 * idx) + (32 * ('cd', 68).length) + 256]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 224]
                    mem[mem[64] + 64] = s
                    _112 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_112 + 32 len mem[_112]])
                    continue 
                _115 = mem[(32 * idx) + 224]
                mem[mem[64] + 32] = s
                mem[mem[64] + 64] = _115
                _117 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_117 + 32 len mem[_117]])
                continue 
    require s == rootHash
    require not stor7[address(cd[4])]
    stor7[address(cd[4])] = 1
    balanceOf[address(cd[4])] = cd[36]
    emit Transfer(cd[36], 0, address(cd[4]));
}



}
