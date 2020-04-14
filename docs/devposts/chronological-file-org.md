# Chronologically organise files - Python utility

`April 2020`

Code snippet

```python
#!/usr/bin/env python3.7

"""
==============================
Chronological File Organizer
==============================

aayushuppal.github.io
April 2020
"""

from datetime import datetime
from pathlib import Path
import shutil


IN_DIR = Path("/path/to/to-do-org-dir")
OUT_DIR = Path("/path/to/chrono-org-dir")


def dtm_to_out_file_path(dtm: datetime, filename: str):
    y = dtm.year
    m = dtm.month
    p = OUT_DIR / f"{y:04}" / f"{m:02}"
    p.mkdir(parents=True, exist_ok=True)
    return p / filename


if __name__ == "__main__":
    in_dir = IN_DIR
    out_dir = OUT_DIR

    assert in_dir.exists() == True

    for p in in_dir.rglob("*"):
        file_name = p.name
        file_mod_dtm = datetime.fromtimestamp(p.stat().st_mtime)
        file_in_path = p
        file_out_path = dtm_to_out_file_path(file_mod_dtm, file_name)

        if file_out_path.exists():
            print(
                f"duplicate exists - cannot move {file_name} from {file_in_path} to {file_out_path}"
            )
        else:
            shutil.move(file_in_path, file_out_path)
```
