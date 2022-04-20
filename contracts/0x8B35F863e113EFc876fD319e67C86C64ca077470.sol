contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1309]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPrizeAmount(uint256 arg1) {
    return (arg1 - (30 * arg1 / 100))
}

function calculateStep(uint256 arg1) {
    require arg1
    return (195 * 10^17 / arg1)
}

function formula(uint256 arg1) {
    require arg1 + 5 * 10^17
    return ((1000000000000000000 * 10^18 / arg1 + 5 * 10^17) - 5 * 10^16)
}

function getNumWinners(uint256 arg1) {
    return arg1 - (95 * arg1 / 100) - ((20 * arg1) - (20 * 95 * arg1 / 100) / 100), (20 * arg1) - (20 * 95 * arg1 / 100) / 100
}

function calcaultePrizes(uint256 arg1, uint256 arg2) {
    mem[96] = 0
    mem[128 len 1568] = 0
    mem[1696] = 0
    mem[1728] = 0
    mem[1760] = 0
    mem[1792 len 96] = 0
    require arg2 - (95 * arg2 / 100) <= 50
    mem[1920] = arg2 + -(95 * arg2 / 100) + -((20 * arg2) - (20 * 95 * arg2 / 100) / 100) - 1
    mem[64] = (32 * arg2 + -(95 * arg2 / 100) + -((20 * arg2) - (20 * 95 * arg2 / 100) / 100) - 1) + 1952
    if 1 == arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100):
        return (arg1 * arg2) - (30 * arg1 * arg2 / 100), 0
    if arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100) < 1:
        return 0
    idx = 0
    s = 0
    while idx < mem[1920]:
        require arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100)
        require (195 * 10^17 / arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100) * idx) + 5 * 10^17
        require idx < mem[1920]
        mem[(32 * idx) + 1952] = (1000000000000000000 * 10^18 / (195 * 10^17 / arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100) * idx) + 5 * 10^17) - 5 * 10^16
        require idx < mem[1920]
        idx = idx + 1
        s = s + (1000000000000000000 * 10^18 / (195 * 10^17 / arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100) * idx) + 5 * 10^17) - 5 * 10^16
        continue 
    t = 0
    u = 1728
    idx = 0
    while idx < 10:
        _96 = mem[64]
        mem[64] = mem[64] + 160
        mem[_96] = 0
        mem[_96 + 32] = 0
        v = _96 + 32
        u = 4
        while u - 1:
            mem[v + 32] = 0
            v = v + 32
            u = u - 1
            continue 
        require 0 < mem[1920]
        _106 = mem[1952]
        require 2 * mem[1952]
        require (10^18 * s / 2 * mem[1952]) + 10^18
        v = 0
        u = 0
        v = (arg2 * arg1) - (30 * arg2 * arg1 / 100) - (arg2 * arg1) + (95 * arg2 / 100 * arg1)
        while u < 5:
            if u >= arg2 - (95 * arg2 / 100):
                s = 0
                while s < 5:
                    if s + (5 * idx) >= arg2 - (95 * arg2 / 100):
                        _164 = mem[64]
                        idx = 0
                        while idx < 1600:
                            mem[idx + _164] = mem[idx + 96]
                            idx = idx + 32
                            continue 
                        return memory
                          from mem[64]
                           len _164 + -mem[64] + 1600
                    require s < 5
                    require s + (5 * idx) < 50
                    mem[(32 * s + (5 * idx)) + 96] = mem[(32 * s) + _96]
                    s = s + 1
                    continue 
                t = s
                u = _96
                idx = idx + 1
                continue 
            require u < 5
            mem[(32 * u) + _96] = arg1
            if u == arg2 + -(95 * arg2 / 100) + -((20 * arg2) - (20 * 95 * arg2 / 100) / 100) - 1:
                require u < 5
                mem[(32 * u) + _96] = arg1 + v
                v = v
                u = u + 1
                v = 0
                continue 
            if u:
                if (5 * idx) + u >= arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100):
                    require u < 5
                    mem[(32 * u) + _96] = arg1
                    v = 0
                    u = u + 1
                    v = v
                    continue 
                require (5 * idx) + u - 1 < mem[1920]
                _136 = mem[(32 * (5 * idx) + u - 1) + 1952]
                require s
                require u < 5
                mem[(32 * u) + _96] = arg1 + ((arg2 * arg1 * mem[(32 * (5 * idx) + u - 1) + 1952]) - (30 * arg2 * arg1 / 100 * mem[(32 * (5 * idx) + u - 1) + 1952]) - (arg2 * arg1 * mem[(32 * (5 * idx) + u - 1) + 1952]) + (95 * arg2 / 100 * arg1 * mem[(32 * (5 * idx) + u - 1) + 1952]) - ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18 * mem[(32 * (5 * idx) + u - 1) + 1952]) / s)
                v = (arg2 * arg1 * _136) - (30 * arg2 * arg1 / 100 * _136) - (arg2 * arg1 * _136) + (95 * arg2 / 100 * arg1 * _136) - ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18 * _136) / s
                u = u + 1
                v = v - ((arg2 * arg1 * _136) - (30 * arg2 * arg1 / 100 * _136) - (arg2 * arg1 * _136) + (95 * arg2 / 100 * arg1 * _136) - ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18 * _136) / s)
                continue 
            if not idx:
                require u < 5
                mem[(32 * u) + _96] = arg1 + ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18)
                v = (10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18
                u = u + 1
                v = v - ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18)
                continue 
            if (5 * idx) + u >= arg2 - (95 * arg2 / 100) - ((20 * arg2) - (20 * 95 * arg2 / 100) / 100):
                require u < 5
                mem[(32 * u) + _96] = arg1
                v = 0
                u = u + 1
                v = v
                continue 
            require (5 * idx) + u - 1 < mem[1920]
            _145 = mem[(32 * (5 * idx) + u - 1) + 1952]
            require s
            require u < 5
            mem[(32 * u) + _96] = arg1 + ((arg2 * arg1 * mem[(32 * (5 * idx) + u - 1) + 1952]) - (30 * arg2 * arg1 / 100 * mem[(32 * (5 * idx) + u - 1) + 1952]) - (arg2 * arg1 * mem[(32 * (5 * idx) + u - 1) + 1952]) + (95 * arg2 / 100 * arg1 * mem[(32 * (5 * idx) + u - 1) + 1952]) - ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18 * mem[(32 * (5 * idx) + u - 1) + 1952]) / s)
            v = (arg2 * arg1 * _145) - (30 * arg2 * arg1 / 100 * _145) - (arg2 * arg1 * _145) + (95 * arg2 / 100 * arg1 * _145) - ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18 * _145) / s
            u = u + 1
            v = v - ((arg2 * arg1 * _145) - (30 * arg2 * arg1 / 100 * _145) - (arg2 * arg1 * _145) + (95 * arg2 / 100 * arg1 * _145) - ((10^18 * arg2 * arg1) - (10^18 * 30 * arg2 * arg1 / 100) - (10^18 * arg2 * arg1) + (10^18 * 95 * arg2 / 100 * arg1) / (10^18 * s / 2 * _106) + 10^18 * _145) / s)
            continue 
        s = 0
        while s < 5:
            if s + (5 * idx) >= arg2 - (95 * arg2 / 100):
                _163 = mem[64]
                idx = 0
                while idx < 1600:
                    mem[idx + _163] = mem[idx + 96]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len _163 + -mem[64] + 1600
            require s < 5
            require s + (5 * idx) < 50
            mem[(32 * s + (5 * idx)) + 96] = mem[(32 * s) + _96]
            s = s + 1
            continue 
        s = s
        u = _96
        idx = idx + 1
        continue 
    mem[mem[64] len 1600] = mem[96 len 1600]
    var32001 = 1600
    return memory
      from mem[64]
       len 1600
}



}
